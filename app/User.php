<?php

namespace App;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;

class User extends Authenticatable
{
    use Notifiable;
    // use Notifiable,Followable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'email', 'password',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];
    public function getAvatarAttribute(){
        return "https://i.pravatar.cc/40?u=".$this->email;
    }
    public function timeline(){
        // return Tweet::where('user_id',$this->id)->latest()->get();
        $friends = $this->follows()->pluck('id');
        // $ids->push($this->id);

       return Tweet::whereIn('user_id',$friends)->orWhere('user_id',$this->id)->latest()->paginate(15);
    }
   
   public function tweets()
    {
        return $this->hasMany(Tweet::class)->latest();
    }
    public function getRouteKeyName(){
        return 'name';
    }
    public function path(){
        return route('profile',$this->name);
    }
    public function follow(User $user){
        return $this->follows()->save($user);
    }
     public function following(User $user){

       // return $this->follows()->where('following_user_id',$user->id)->exists();
        return $this->follows()->where('following_user_id',$user->id)->exists();
       
    }
    public function follows(){
        return $this->belongsToMany(
            User::class,
            'follows',
            'user_id',
            'following_user_id');
        // return $this->belongsTo(
        //     User::class,
        //     'follows',
        //     'user_id',
        //     'following_user_id');
    }
    public function unfollow(User $user){
        return $this->follows()->detach($user);
    }
    public function toggleFollow(User $user){
        if ($this->following($user)) {
            return $this->unfollow($user);
        }
        return $this->follow($user);
        
   }
}
