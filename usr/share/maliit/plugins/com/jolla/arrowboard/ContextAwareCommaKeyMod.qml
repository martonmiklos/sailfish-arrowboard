// Modification (c) 2015-2017 tmi

import QtQuick 2.0
import com.meego.maliitquick 1.0
import com.jolla.keyboard 1.0
import ".."

ContextAwareCommaKey {
    function accents() { 
	if(canvas.layoutModel.get(canvas.activeIndex).name.slice(-3) === "iOS") {
             if (MInputMethodQuick.contentType === Maliit.UrlContentType)
                 return ":,@"
             if (MInputMethodQuick.contentType === Maliit.EmailContentType)
                 return ":,/"
             return ":@/"
    	}
        return ""
    }

    accents: accents()
    accentsShifted: accents()
    implicitWidth: punctuationKeyWidth * 0.8
}
