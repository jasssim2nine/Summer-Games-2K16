//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Summer_Games_2K16.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class GAMES
    {
        public int GAMEID { get; set; }
        public string DESCRIPTION { get; set; }
        public Nullable<int> SPECTATORS { get; set; }
        public string TEAM_A { get; set; }
        public string TEAM_B { get; set; }
        public System.DateTime PLAYED_ON { get; set; }
        public string WINNER { get; set; }
        public int TEAM_A_POINTS { get; set; }
        public int TEAM_B_POINTS { get; set; }
        public string GAMENAME { get; set; }
        public Nullable<int> TOTAL_POINTS { get; set; }
    }
}
