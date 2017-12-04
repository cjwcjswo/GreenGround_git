package hufs.green.util;

import org.springframework.stereotype.Component;

import hufs.green.dto.MemberDTO;
@Component
public class PrincipalConverter {
	private static final int LAST_NAME = 0;
	private static final int FIRST_NAME = 1;
	private static final int EMAIL = 2;
	private static final int MAX_INFO = 3;
	public PrincipalConverter(){}
	
	public MemberDTO convertToMemberDTO(String name){
		int cnt = 0;
		String[] resultInfo = new String[MAX_INFO]; 
		int firstIndex = name.indexOf('[');
		int lastIndex = name.lastIndexOf(']');
		String info = name.substring(firstIndex+1, lastIndex-2);
		System.out.println("info: " + info);
		MemberDTO result = new MemberDTO();
		String[] infoArr = info.split("\\,");
		for(String infoDetail : infoArr){
			resultInfo[cnt++] = infoDetail.substring(infoDetail.indexOf("=") + 1, infoDetail.length());
		}
		result.setLastName(resultInfo[LAST_NAME]);
		result.setFirstName(resultInfo[FIRST_NAME]);
		result.setEmail(resultInfo[EMAIL]);
		return result;
	}
}
