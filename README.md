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

UIScrollViews are key components of many different UIKit Classes.  They are the unsung heroes of UITableView, UIPageView, UITextView, UICollectionView, and many, many more.  Today, my friends, we liberate the scroll view from the shackles of servitude, and acknowledge her prowess outside the shadow of her overlords.  

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

Quite frankly, Autolayout wreaks havoc on scroll views.  So much so that if you have Autolayout enabled, and you Add a ScrollView to your project it's very likely that nothing will happen.  No scrolling, no paging, nada.  

But all is not lost! Apple has a **[great little article](https://developer.apple.com/library/ios/technotes/tn2154/_index.html)** about working with ScrollViews in Autolayout enabled projects.  I highly recommend at least scanning this doc before starting this lab.  We'll be using the "Mixed Approach", which basically uses Autolayout to position the ScrollView itself and the internal devices of the scroll view to layout its' content.    

##Mixed Approach

Apple offers this little snippet on the mixed Autolayout / ScrollView approach.  

>Position and size your scroll view with constraints external to the scroll view—that is, the translatesAutoresizingMaskIntoConstraints property is set to NO.
>Create a plain UIView content view for your scroll view that will be the size you want your content to have. Make it a subview of the scroll view but let it continue to translate the autoresizing mask into constraints:



### Instructions 

  - 
  - 
  - 


### Extra Credit


### Links

- **Auto-Layout with ScrollViews** - https://developer.apple.com/library/ios/technotes/tn2154/_index.html


