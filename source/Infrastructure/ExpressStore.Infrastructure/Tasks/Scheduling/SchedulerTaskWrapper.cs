using NCrontab;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ExpressStore.Infrastructure.Tasks.Scheduling
{
    public class SchedulerTaskWrapper
    {
        public CrontabSchedule Schedule { get; set; }

        public IScheduledTask Task { get; set; }

        public DateTime LastRunTime { get; set; }

        public DateTime NextRunTime { get; set; }

        public void Increment()
        {
            LastRunTime = NextRunTime;
            NextRunTime = Schedule.GetNextOccurrence(NextRunTime);
        }

        public bool ShouldRun(DateTime currentTime)
        {
            return NextRunTime < currentTime && LastRunTime != NextRunTime;
        }
    }
}
