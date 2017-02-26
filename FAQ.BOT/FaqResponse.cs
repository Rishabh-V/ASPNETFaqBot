namespace FAQ.BOT
{
    public class FaqResponse
    {
        /// <summary>
        /// The top answer found in the QnA Service.
        /// </summary>        
        public string Answer { get; set; }

        /// <summary>
        /// The score in range [0, 100] corresponding to the top answer found in the QnA    Service.
        /// </summary>        
        public double Score { get; set; }
    }
}
