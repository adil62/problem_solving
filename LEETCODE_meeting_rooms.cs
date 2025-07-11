/**
 * Definition of Interval:
 * public class Interval {
 *     public int start, end;
 *     public Interval(int start, int end) {
 *         this.start = start;
 *         this.end = end;
 *     }
 * }
 */

// TC O(n2), SP: O(1)
public class Solution {
    public bool CanAttendMeetings(List<Interval> intervals) {
        for (int i=0; i<intervals.Count; i++)
        {
            var interval = intervals[i];
            for (int j=0; j<intervals.Count; j++)
            {
                if (j == i) continue;

                var interval2 = intervals[j];

                if (interval.end <= interval2.start || interval2.end <= interval.start) {
                    continue;
                } else {
                    // Overlap
                    return false;
                }
            }
        }

        return true;
    }
}
