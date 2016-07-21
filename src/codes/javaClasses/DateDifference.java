package codes.javaClasses;

import java.text.SimpleDateFormat;
import java.util.Date;

public class DateDifference {

	public int getDays(String dateNeed, String dateLast) {
		SimpleDateFormat format = new SimpleDateFormat("MM/dd/yyyy");

		Date d1 = null;
		Date d2 = null;
		int diffDays = 0;
		try {
			d1 = format.parse(dateLast);
			d2 = format.parse(dateNeed);
			long diff = d2.getTime() - d1.getTime();
			diffDays = (int)diff / (24 * 60 * 60 * 1000);

		} catch (Exception e) {
			e.printStackTrace();
		}
		return diffDays;
	}

}