---
  tags: tutorial, beginner, OOP, Object-Oriented Programming, model 
  languages: objc
---

obj-ScrollViews
===============

### Goals 
  
  - Learn about ScrollViews
  - Use ScrollViews with Autolayout 
  - Incorporate ScrollViews into UITableViewCells 

###UIScrollView

UIScrollViews are key components of many different UIKit Classes.  They are the unsung heroes of UITableView, UIPageView, UITextView, UICollectionView, and many, many more.  Today, my friends, we liberate the scroll view from the shackles of servitude, and acknowledge her prowess outside the long shadow of her overlords.  

**We'll test drive the scroll view on three different use cases.** 

-  A scroll view to display a horizontal collection of photos (*with paging*) 
-  A scroll view embedded in a UITableViewCell to allow horizontal scrolling (*with paging*) 
-  Embedding form data in a scroll view to scroll content when keyboard appears and disappears     

###Cast of Characters 

There are a few properties on Scroll Views that you'll need to be familiar with in order to use them effectively.  

- **`@property(nonatomic) CGSize contentSize`** - The size of the content view.
- **`@property(nonatomic) CGPoint contentOffset`** -  The point at which the origin of the content view is offset from the origin of the scroll view. The default value is `CGPointZero`.
- **`@property(nonatomic, getter=isPagingEnabled) BOOL pagingEnabled`** - A Boolean value that determines whether paging is enabled for the scroll view. If the value of this property is YES, the scroll view stops on multiples of the scroll views' bounds when the user scrolls. The default value is NO.

##Autolayout and ScrollViews

Quite frankly, Autolayout wreaks havoc on scroll views.  So much so that if you have Autolayout enabled, and you add a ScrollView to your project it's very likely that nothing will happen.  No scrolling, no paging, nada.  

But all is not lost! Apple has a **[somewhat useful little article](https://developer.apple.com/library/ios/technotes/tn2154/_index.html)** about working with ScrollViews in Autolayout-enabled projects.  I highly recommend at least scanning this doc before starting this lab.  We'll be using the "Mixed Approach", which basically uses Autolayout to position the ScrollView itself and the internal devices of the scroll view to layout its' content.    

##Mixed Approach

Apple offers this little snippet on the mixed Autolayout / ScrollView approach.  

>Position and size your scroll view with constraints external to the scroll view—that is, the translatesAutoresizingMaskIntoConstraints property is set to NO.
>Create a plain UIView content view for your scroll view that will be the size you want your content to have. Make it a subview of the scroll view but let it continue to translate the autoresizing mask into constraints:

##Autolayout Approach 

Getting autolayout to work in the storyboard is the darkest form of magic.  But fear not.  Follow this formula and you're content will be scrolling in no time. Perhaps we can even make sense of what's happening when we're done.  

##Configuring the views on the StoryBoard 
- Drag a scroll view onto the view controller and make it exactly fill the bounds rect of the view (full screen).
- Drag a view and drop it over top of the scroll view making sure it is both the same dimensions and in the same position as the scroll view.  This will be our content view. 
- Expand the content view on the Y axis to make it taller than the scroll view.  This is most easily executed from the size inspector by simply increasing the height of the view to 600. 
- Add a few buttons, one at the top, one in the middle and one at the bottom of the view (you may have to do some awkward maneuvering of the content view to pull this off, just make sure you move it back to it's origin of 0,0 when you're done)

##Laying out the views
- Select the scroll view from the document outline and select the 'pin' icon to add new constraints. (It looks kind of like this |-|-|  ) 
- Select each of the orange 'pin' icons around the bounding box (spacing to nearest neighbor) and ensure all of the spacing values are set to 0.  This operation should add 4 constraints, as shown at the bottom of the window.  
- Select 'add 4 constraints'. 
- Next, select the content view and add 0 pt spacing around each edge of its' bounds rect.  Also select the height constraint.  The height value should be greater than the height of the iPhone screen. 
- This time, select both the content view and the scroll view -> add new constraints and select equal widths.  
##What did we just do? 

OK, let's think about this.  There are a few things that have to go just right to allow the scroll view to determine its' scrollable content size.

- The Scroll view - The scroll view must have a concrete layout.  ie. It must know how to derive its width, height, and x/y position.  We did this by constraining the scroll view to it's superview's (the default view) leading, trailing, top and bottom edges.  
- The content view - 
The content view must have bounds that expand beyond that of the scroll view (in our case we made the content expand down in the y axis) and have constraints to the scroll view on all 4 edges.  

This all may still not make an incredible amount of sense, but if you can reproduce this template, you know have a very powerful, flexible layout.  At this point, you can embed whatever UI elements you'd like into that content view and have a fully Auto-Layout compatible scroll view.  You can even make an outlet from the content view to your ViewController Subclass code and do all of your layout and/or subview creation in code.   

### Instructions 

  - 
  - 
  - 


### Extra Credit


### Links

- **Auto-Layout with ScrollViews** - https://developer.apple.com/library/ios/technotes/tn2154/_index.html
- **Demo of Laying out Scroll View in Storyboard** - https://www.youtube.com/watch?v=4oCWxHLBQ-A

### Pro Tip 

- Create a new ViewController, select it, show the 'Attributes Inspector'(the badge thingy?), and select freeform.  (This allows your ViewController to morph to sizes larger than the screen, which is great for laying out Scrollable content)
- Select your view controller's default view, open the size inspector (the ruler) and set the height to something larger than the point size of a real iPhone screen, say 700.  

