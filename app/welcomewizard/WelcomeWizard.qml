/*
 * Copyright (C) 2015 Canonical Ltd
 *
 * This file is part of Ubuntu Calculator App
 *
 * Ubuntu Calculator App is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License version 3 as
 * published by the Free Software Foundation.
 *
 * Ubuntu Calculator App is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

import QtQuick 2.3
import Ubuntu.Components 1.1
import "../ui"

// Initial Walkthrough tutorial
Walkthrough {
    id: walkthrough
    appName: "Calculator"
    onFinished: {
        console.log("[LOG]: Welcome tour complete")
        settings.firstRun = false
        mainStack.pop()
        mainStack.push(calculatorPage)
        calculatorPage.forceActiveFocus();
    }
    model: [
        Slide1{},
        Slide2{},
        Slide3{}
    ]
}
