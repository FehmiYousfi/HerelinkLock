.class public Lcom/shawnlin/numberpicker/NumberPicker;
.super Landroid/widget/LinearLayout;
.source "NumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shawnlin/numberpicker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;,
        Lcom/shawnlin/numberpicker/NumberPicker$SetSelectionCommand;,
        Lcom/shawnlin/numberpicker/NumberPicker$InputTextFilter;,
        Lcom/shawnlin/numberpicker/NumberPicker$Formatter;,
        Lcom/shawnlin/numberpicker/NumberPicker$OnScrollListener;,
        Lcom/shawnlin/numberpicker/NumberPicker$OnValueChangeListener;,
        Lcom/shawnlin/numberpicker/NumberPicker$TwoDigitFormatter;,
        Lcom/shawnlin/numberpicker/NumberPicker$Align;,
        Lcom/shawnlin/numberpicker/NumberPicker$Order;,
        Lcom/shawnlin/numberpicker/NumberPicker$Orientation;
    }
.end annotation


# static fields
.field public static final ASCENDING:I = 0x0

.field public static final CENTER:I = 0x1

.field private static final DEFAULT_DIVIDER_COLOR:I = -0x1000000

.field private static final DEFAULT_FADING_EDGE_STRENGTH:F = 0.9f

.field private static final DEFAULT_LINE_SPACING_MULTIPLIER:F = 1.0f

.field private static final DEFAULT_LONG_PRESS_UPDATE_INTERVAL:J = 0x12cL

.field private static final DEFAULT_MAX_FLING_VELOCITY_COEFFICIENT:I = 0x8

.field private static final DEFAULT_MAX_HEIGHT:I = 0xb4

.field private static final DEFAULT_MAX_VALUE:I = 0x64

.field private static final DEFAULT_MIN_VALUE:I = 0x1

.field private static final DEFAULT_MIN_WIDTH:I = 0x40

.field private static final DEFAULT_TEXT_ALIGN:I = 0x1

.field private static final DEFAULT_TEXT_COLOR:I = -0x1000000

.field private static final DEFAULT_TEXT_SIZE:F = 25.0f

.field private static final DEFAULT_WHEEL_ITEM_COUNT:I = 0x3

.field public static final DESCENDING:I = 0x1

.field private static final DIGIT_CHARACTERS:[C

.field public static final HORIZONTAL:I = 0x0

.field public static final LEFT:I = 0x2

.field public static final RIGHT:I = 0x0

.field private static final SELECTOR_ADJUSTMENT_DURATION_MILLIS:I = 0x320

.field private static final SIZE_UNSPECIFIED:I = -0x1

.field private static final SNAP_SCROLL_DURATION:I = 0x12c

.field private static final UNSCALED_DEFAULT_DIVIDER_DISTANCE:I = 0x30

.field private static final UNSCALED_DEFAULT_DIVIDER_THICKNESS:I = 0x2

.field public static final VERTICAL:I = 0x1

.field private static final sTwoDigitFormatter:Lcom/shawnlin/numberpicker/NumberPicker$TwoDigitFormatter;


# instance fields
.field private mAccessibilityDescriptionEnabled:Z

.field private final mAdjustScroller:Lcom/shawnlin/numberpicker/Scroller;

.field private mBottomDividerBottom:I

.field private mChangeCurrentByOneFromLongPressCommand:Lcom/shawnlin/numberpicker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

.field private final mComputeMaxWidth:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentScrollOffset:I

.field private mDisplayedValues:[Ljava/lang/String;

.field private mDividerColor:I

.field private mDividerDistance:I

.field private mDividerDrawable:Landroid/graphics/drawable/Drawable;

.field private mDividerThickness:I

.field private mFadingEdgeEnabled:Z

.field private mFadingEdgeStrength:F

.field private final mFlingScroller:Lcom/shawnlin/numberpicker/Scroller;

.field private mFormatter:Lcom/shawnlin/numberpicker/NumberPicker$Formatter;

.field private mHeight:F

.field private mHideWheelUntilFocused:Z

.field private mInitialScrollOffset:I

.field private mLastDownEventX:F

.field private mLastDownEventY:F

.field private mLastDownOrMoveEventX:F

.field private mLastDownOrMoveEventY:F

.field private mLastHandledDownDpadKeyCode:I

.field private mLeftDividerLeft:I

.field private mLineSpacingMultiplier:F

.field private mLongPressUpdateInterval:J

.field private mMaxFlingVelocityCoefficient:I

.field private mMaxHeight:I

.field private mMaxValue:I

.field private mMaxWidth:I

.field private mMaximumFlingVelocity:I

.field private mMinHeight:I

.field private mMinValue:I

.field private mMinWidth:I

.field private mMinimumFlingVelocity:I

.field private mNumberFormatter:Ljava/text/NumberFormat;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnScrollListener:Lcom/shawnlin/numberpicker/NumberPicker$OnScrollListener;

.field private mOnValueChangeListener:Lcom/shawnlin/numberpicker/NumberPicker$OnValueChangeListener;

.field private mOrder:I

.field private mOrientation:I

.field private mPreviousScrollerX:I

.field private mPreviousScrollerY:I

.field private mRealWheelItemCount:I

.field private mRightDividerRight:I

.field private mScrollState:I

.field private mScrollerEnabled:Z

.field private final mSelectedText:Landroid/widget/EditText;

.field private mSelectedTextAlign:I

.field private mSelectedTextCenterX:F

.field private mSelectedTextCenterY:F

.field private mSelectedTextColor:I

.field private mSelectedTextSize:F

.field private mSelectedTextStrikeThru:Z

.field private mSelectedTextUnderline:Z

.field private mSelectedTypeface:Landroid/graphics/Typeface;

.field private mSelectorElementSize:I

.field private final mSelectorIndexToStringCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectorIndices:[I

.field private mSelectorTextGapHeight:I

.field private mSelectorTextGapWidth:I

.field private final mSelectorWheelPaint:Landroid/graphics/Paint;

.field private mSetSelectionCommand:Lcom/shawnlin/numberpicker/NumberPicker$SetSelectionCommand;

.field private mTextAlign:I

.field private mTextColor:I

.field private mTextSize:F

.field private mTextStrikeThru:Z

.field private mTextUnderline:Z

.field private mTopDividerTop:I

.field private mTouchSlop:I

.field private mTypeface:Landroid/graphics/Typeface;

.field private mValue:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mViewConfiguration:Landroid/view/ViewConfiguration;

.field private mWheelItemCount:I

.field private mWheelMiddleItemIndex:I

.field private mWidth:F

.field private mWrapSelectorWheel:Z

.field private mWrapSelectorWheelPreferred:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 211
    new-instance v0, Lcom/shawnlin/numberpicker/NumberPicker$TwoDigitFormatter;

    invoke-direct {v0}, Lcom/shawnlin/numberpicker/NumberPicker$TwoDigitFormatter;-><init>()V

    sput-object v0, Lcom/shawnlin/numberpicker/NumberPicker;->sTwoDigitFormatter:Lcom/shawnlin/numberpicker/NumberPicker$TwoDigitFormatter;

    const/16 v0, 0x3d

    new-array v0, v0, [C

    .line 2357
    fill-array-data v0, :array_0

    sput-object v0, Lcom/shawnlin/numberpicker/NumberPicker;->DIGIT_CHARACTERS:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x660s
        0x661s
        0x662s
        0x663s
        0x664s
        0x665s
        0x666s
        0x667s
        0x668s
        0x669s
        0x6f0s
        0x6f1s
        0x6f2s
        0x6f3s
        0x6f4s
        0x6f5s
        0x6f6s
        0x6f7s
        0x6f8s
        0x6f9s
        0x966s
        0x967s
        0x968s
        0x969s
        0x96as
        0x96bs
        0x96cs
        0x96ds
        0x96es
        0x96fs
        0x9e6s
        0x9e7s
        0x9e8s
        0x9e9s
        0x9eas
        0x9ebs
        0x9ecs
        0x9eds
        0x9ees
        0x9efs
        0xce6s
        0xce7s
        0xce8s
        0xce9s
        0xceas
        0xcebs
        0xcecs
        0xceds
        0xcees
        0xcefs
        0x2ds
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 688
    invoke-direct {p0, p1, v0}, Lcom/shawnlin/numberpicker/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 698
    invoke-direct {p0, p1, p2, v0}, Lcom/shawnlin/numberpicker/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .line 709
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    .line 260
    iput v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectedTextAlign:I

    const/high16 v1, -0x1000000

    .line 265
    iput v1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectedTextColor:I

    const/high16 v2, 0x41c80000    # 25.0f

    .line 270
    iput v2, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectedTextSize:F

    .line 290
    iput v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mTextAlign:I

    .line 295
    iput v1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mTextColor:I

    .line 300
    iput v2, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mTextSize:F

    .line 335
    iput v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mMinValue:I

    const/16 v2, 0x64

    .line 340
    iput v2, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mMaxValue:I

    const-wide/16 v2, 0x12c

    .line 370
    iput-wide v2, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mLongPressUpdateInterval:J

    .line 375
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    const/4 v2, 0x3

    .line 380
    iput v2, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mWheelItemCount:I

    .line 385
    iput v2, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mRealWheelItemCount:I

    .line 390
    iget v2, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mWheelItemCount:I

    div-int/lit8 v3, v2, 0x2

    iput v3, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mWheelMiddleItemIndex:I

    .line 395
    new-array v2, v2, [I

    iput-object v2, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectorIndices:[I

    const/high16 v2, -0x80000000

    .line 410
    iput v2, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mInitialScrollOffset:I

    .line 495
    iput-boolean v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mWrapSelectorWheelPreferred:Z

    .line 505
    iput v1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mDividerColor:I

    const/4 v1, 0x0

    .line 540
    iput v1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mScrollState:I

    const/4 v2, -0x1

    .line 545
    iput v2, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mLastHandledDownDpadKeyCode:I

    .line 575
    iput-boolean v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mFadingEdgeEnabled:Z

    const v3, 0x3f666666    # 0.9f

    .line 580
    iput v3, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mFadingEdgeStrength:F

    .line 585
    iput-boolean v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mScrollerEnabled:Z

    const/high16 v3, 0x3f800000    # 1.0f

    .line 590
    iput v3, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mLineSpacingMultiplier:F

    const/16 v3, 0x8

    .line 595
    iput v3, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mMaxFlingVelocityCoefficient:I

    .line 600
    iput-boolean v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mAccessibilityDescriptionEnabled:Z

    .line 710
    iput-object p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mContext:Landroid/content/Context;

    .line 711
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v3

    iput-object v3, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mNumberFormatter:Ljava/text/NumberFormat;

    .line 713
    sget-object v3, Lcom/shawnlin/numberpicker/R$styleable;->NumberPicker:[I

    invoke-virtual {p1, p2, v3, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 716
    sget p3, Lcom/shawnlin/numberpicker/R$styleable;->NumberPicker_np_divider:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 719
    invoke-virtual {p3, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 720
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 721
    invoke-virtual {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {p3, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 723
    :cond_0
    iput-object p3, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 725
    :cond_1
    sget p3, Lcom/shawnlin/numberpicker/R$styleable;->NumberPicker_np_dividerColor:I

    iget v3, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mDividerColor:I

    invoke-virtual {p2, p3, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mDividerColor:I

    .line 727
    iget p3, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mDividerColor:I

    invoke-virtual {p0, p3}, Lcom/shawnlin/numberpicker/NumberPicker;->setDividerColor(I)V

    .line 730
    :goto_0
    invoke-virtual {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    const/high16 v3, 0x42400000    # 48.0f

    .line 731
    invoke-static {v0, v3, p3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    .line 733
    invoke-static {v0, v4, p3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p3

    float-to-int p3, p3

    .line 735
    sget v4, Lcom/shawnlin/numberpicker/R$styleable;->NumberPicker_np_dividerDistance:I

    invoke-virtual {p2, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mDividerDistance:I

    .line 737
    sget v3, Lcom/shawnlin/numberpicker/R$styleable;->NumberPicker_np_dividerThickness:I

    invoke-virtual {p2, v3, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mDividerThickness:I

    .line 740
    sget p3, Lcom/shawnlin/numberpicker/R$styleable;->NumberPicker_np_order:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mOrder:I

    .line 741
    sget p3, Lcom/shawnlin/numberpicker/R$styleable;->NumberPicker_np_orientation:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mOrientation:I

    .line 743
    sget p3, Lcom/shawnlin/numberpicker/R$styleable;->NumberPicker_np_width:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    int-to-float p3, p3

    iput p3, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mWidth:F

    .line 745
    sget p3, Lcom/shawnlin/numberpicker/R$styleable;->NumberPicker_np_height:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    int-to-float p3, p3

    iput p3, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mHeight:F

    .line 748
    invoke-direct {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->setWidthAndHeight()V

    .line 750
    iput-boolean v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mComputeMaxWidth:Z

    .line 752
    sget p3, Lcom/shawnlin/numberpicker/R$styleable;->NumberPicker_np_value:I

    iget v2, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mValue:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mValue:I

    .line 753
    sget p3, Lcom/shawnlin/numberpicker/R$styleable;->NumberPicker_np_max:I

    iget v2, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mMaxValue:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mMaxValue:I

    .line 754
    sget p3, Lcom/shawnlin/numberpicker/R$styleable;->NumberPicker_np_min:I

    iget v2, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mMinValue:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mMinValue:I

    .line 756
    sget p3, Lcom/shawnlin/numberpicker/R$styleable;->NumberPicker_np_selectedTextAlign:I

    iget v2, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectedTextAlign:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectedTextAlign:I

    .line 758
    sget p3, Lcom/shawnlin/numberpicker/R$styleable;->NumberPicker_np_selectedTextColor:I

    iget v2, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectedTextColor:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectedTextColor:I

    .line 760
    sget p3, Lcom/shawnlin/numberpicker/R$styleable;->NumberPicker_np_selectedTextSize:I

    iget v2, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectedTextSize:F

    .line 761
    invoke-direct {p0, v2}, Lcom/shawnlin/numberpicker/NumberPicker;->spToPx(F)F

    move-result v2

    .line 760
    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    iput p3, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectedTextSize:F

    .line 762
    sget p3, Lcom/shawnlin/numberpicker/R$styleable;->NumberPicker_np_selectedTextStrikeThru:I

    iget-boolean v2, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectedTextStrikeThru:Z

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectedTextStrikeThru:Z

    .line 764
    sget p3, Lcom/shawnlin/numberpicker/R$styleable;->NumberPicker_np_selectedTextUnderline:I

    iget-boolean v2, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectedTextUnderline:Z

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectedTextUnderline:Z

    .line 766
    sget p3, Lcom/shawnlin/numberpicker/R$styleable;->NumberPicker_np_selectedTypeface:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p3

    iput-object p3, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectedTypeface:Landroid/graphics/Typeface;

    .line 768
    sget p3, Lcom/shawnlin/numberpicker/R$styleable;->NumberPicker_np_textAlign:I

    iget v2, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mTextAlign:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mTextAlign:I

    .line 769
    sget p3, Lcom/shawnlin/numberpicker/R$styleable;->NumberPicker_np_textColor:I

    iget v2, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mTextColor:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mTextColor:I

    .line 770
    sget p3, Lcom/shawnlin/numberpicker/R$styleable;->NumberPicker_np_textSize:I

    iget v2, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mTextSize:F

    .line 771
    invoke-direct {p0, v2}, Lcom/shawnlin/numberpicker/NumberPicker;->spToPx(F)F

    move-result v2

    .line 770
    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    iput p3, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mTextSize:F

    .line 772
    sget p3, Lcom/shawnlin/numberpicker/R$styleable;->NumberPicker_np_textStrikeThru:I

    iget-boolean v2, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mTextStrikeThru:Z

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mTextStrikeThru:Z

    .line 774
    sget p3, Lcom/shawnlin/numberpicker/R$styleable;->NumberPicker_np_textUnderline:I

    iget-boolean v2, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mTextUnderline:Z

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mTextUnderline:Z

    .line 776
    sget p3, Lcom/shawnlin/numberpicker/R$styleable;->NumberPicker_np_typeface:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p3

    iput-object p3, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mTypeface:Landroid/graphics/Typeface;

    .line 778
    sget p3, Lcom/shawnlin/numberpicker/R$styleable;->NumberPicker_np_formatter:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/shawnlin/numberpicker/NumberPicker;->stringToFormatter(Ljava/lang/String;)Lcom/shawnlin/numberpicker/NumberPicker$Formatter;

    move-result-object p3

    iput-object p3, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mFormatter:Lcom/shawnlin/numberpicker/NumberPicker$Formatter;

    .line 779
    sget p3, Lcom/shawnlin/numberpicker/R$styleable;->NumberPicker_np_fadingEdgeEnabled:I

    iget-boolean v2, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mFadingEdgeEnabled:Z

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mFadingEdgeEnabled:Z

    .line 781
    sget p3, Lcom/shawnlin/numberpicker/R$styleable;->NumberPicker_np_fadingEdgeStrength:I

    iget v2, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mFadingEdgeStrength:F

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    iput p3, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mFadingEdgeStrength:F

    .line 783
    sget p3, Lcom/shawnlin/numberpicker/R$styleable;->NumberPicker_np_scrollerEnabled:I

    iget-boolean v2, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mScrollerEnabled:Z

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mScrollerEnabled:Z

    .line 785
    sget p3, Lcom/shawnlin/numberpicker/R$styleable;->NumberPicker_np_wheelItemCount:I

    iget v2, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mWheelItemCount:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mWheelItemCount:I

    .line 787
    sget p3, Lcom/shawnlin/numberpicker/R$styleable;->NumberPicker_np_lineSpacingMultiplier:I

    iget v2, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mLineSpacingMultiplier:F

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    iput p3, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mLineSpacingMultiplier:F

    .line 789
    sget p3, Lcom/shawnlin/numberpicker/R$styleable;->NumberPicker_np_maxFlingVelocityCoefficient:I

    iget v2, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mMaxFlingVelocityCoefficient:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mMaxFlingVelocityCoefficient:I

    .line 792
    sget p3, Lcom/shawnlin/numberpicker/R$styleable;->NumberPicker_np_hideWheelUntilFocused:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mHideWheelUntilFocused:Z

    .line 794
    sget p3, Lcom/shawnlin/numberpicker/R$styleable;->NumberPicker_np_accessibilityDescriptionEnabled:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mAccessibilityDescriptionEnabled:Z

    .line 802
    invoke-virtual {p0, v1}, Lcom/shawnlin/numberpicker/NumberPicker;->setWillNotDraw(Z)V

    const-string p3, "layout_inflater"

    .line 804
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/LayoutInflater;

    .line 806
    sget v2, Lcom/shawnlin/numberpicker/R$layout;->number_picker_material:I

    invoke-virtual {p3, v2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 809
    sget p3, Lcom/shawnlin/numberpicker/R$id;->np__numberpicker_input:I

    invoke-virtual {p0, p3}, Lcom/shawnlin/numberpicker/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/EditText;

    iput-object p3, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectedText:Landroid/widget/EditText;

    .line 810
    iget-object p3, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectedText:Landroid/widget/EditText;

    invoke-virtual {p3, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 811
    iget-object p3, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectedText:Landroid/widget/EditText;

    invoke-virtual {p3, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 812
    iget-object p3, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectedText:Landroid/widget/EditText;

    invoke-virtual {p3, v0}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 815
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    .line 816
    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 817
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 818
    iput-object p3, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    .line 820
    iget p3, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectedTextColor:I

    invoke-virtual {p0, p3}, Lcom/shawnlin/numberpicker/NumberPicker;->setSelectedTextColor(I)V

    .line 821
    iget p3, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mTextColor:I

    invoke-virtual {p0, p3}, Lcom/shawnlin/numberpicker/NumberPicker;->setTextColor(I)V

    .line 822
    iget p3, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mTextSize:F

    invoke-virtual {p0, p3}, Lcom/shawnlin/numberpicker/NumberPicker;->setTextSize(F)V

    .line 823
    iget p3, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectedTextSize:F

    invoke-virtual {p0, p3}, Lcom/shawnlin/numberpicker/NumberPicker;->setSelectedTextSize(F)V

    .line 824
    iget-object p3, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {p0, p3}, Lcom/shawnlin/numberpicker/NumberPicker;->setTypeface(Landroid/graphics/Typeface;)V

    .line 825
    iget-object p3, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectedTypeface:Landroid/graphics/Typeface;

    invoke-virtual {p0, p3}, Lcom/shawnlin/numberpicker/NumberPicker;->setSelectedTypeface(Landroid/graphics/Typeface;)V

    .line 826
    iget-object p3, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mFormatter:Lcom/shawnlin/numberpicker/NumberPicker$Formatter;

    invoke-virtual {p0, p3}, Lcom/shawnlin/numberpicker/NumberPicker;->setFormatter(Lcom/shawnlin/numberpicker/NumberPicker$Formatter;)V

    .line 827
    invoke-direct {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->updateInputTextView()Z

    .line 829
    iget p3, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mValue:I

    invoke-virtual {p0, p3}, Lcom/shawnlin/numberpicker/NumberPicker;->setValue(I)V

    .line 830
    iget p3, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mMaxValue:I

    invoke-virtual {p0, p3}, Lcom/shawnlin/numberpicker/NumberPicker;->setMaxValue(I)V

    .line 831
    iget p3, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mMinValue:I

    invoke-virtual {p0, p3}, Lcom/shawnlin/numberpicker/NumberPicker;->setMinValue(I)V

    .line 833
    iget p3, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mWheelItemCount:I

    invoke-virtual {p0, p3}, Lcom/shawnlin/numberpicker/NumberPicker;->setWheelItemCount(I)V

    .line 835
    sget p3, Lcom/shawnlin/numberpicker/R$styleable;->NumberPicker_np_wrapSelectorWheel:I

    iget-boolean v1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mWrapSelectorWheel:Z

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mWrapSelectorWheel:Z

    .line 837
    iget-boolean p3, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mWrapSelectorWheel:Z

    invoke-virtual {p0, p3}, Lcom/shawnlin/numberpicker/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 839
    iget p3, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mWidth:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v2, p3, v1

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mHeight:F

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_2

    .line 840
    iget v1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mMinWidth:I

    int-to-float v1, v1

    div-float/2addr p3, v1

    invoke-virtual {p0, p3}, Lcom/shawnlin/numberpicker/NumberPicker;->setScaleX(F)V

    .line 841
    iget p3, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mHeight:F

    iget v1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mMaxHeight:I

    int-to-float v1, v1

    div-float/2addr p3, v1

    invoke-virtual {p0, p3}, Lcom/shawnlin/numberpicker/NumberPicker;->setScaleY(F)V

    goto :goto_1

    .line 842
    :cond_2
    iget p3, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mWidth:F

    cmpl-float v2, p3, v1

    if-eqz v2, :cond_3

    .line 843
    iget v1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mMinWidth:I

    int-to-float v1, v1

    div-float/2addr p3, v1

    invoke-virtual {p0, p3}, Lcom/shawnlin/numberpicker/NumberPicker;->setScaleX(F)V

    .line 844
    iget p3, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mWidth:F

    iget v1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mMinWidth:I

    int-to-float v1, v1

    div-float/2addr p3, v1

    invoke-virtual {p0, p3}, Lcom/shawnlin/numberpicker/NumberPicker;->setScaleY(F)V

    goto :goto_1

    .line 845
    :cond_3
    iget p3, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mHeight:F

    cmpl-float v1, p3, v1

    if-eqz v1, :cond_4

    .line 846
    iget v1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mMaxHeight:I

    int-to-float v1, v1

    div-float/2addr p3, v1

    invoke-virtual {p0, p3}, Lcom/shawnlin/numberpicker/NumberPicker;->setScaleX(F)V

    .line 847
    iget p3, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mHeight:F

    iget v1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mMaxHeight:I

    int-to-float v1, v1

    div-float/2addr p3, v1

    invoke-virtual {p0, p3}, Lcom/shawnlin/numberpicker/NumberPicker;->setScaleY(F)V

    .line 851
    :cond_4
    :goto_1
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p3

    iput-object p3, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mViewConfiguration:Landroid/view/ViewConfiguration;

    .line 852
    iget-object p3, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mViewConfiguration:Landroid/view/ViewConfiguration;

    invoke-virtual {p3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p3

    iput p3, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mTouchSlop:I

    .line 853
    iget-object p3, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mViewConfiguration:Landroid/view/ViewConfiguration;

    invoke-virtual {p3}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p3

    iput p3, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mMinimumFlingVelocity:I

    .line 854
    iget-object p3, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mViewConfiguration:Landroid/view/ViewConfiguration;

    invoke-virtual {p3}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p3

    iget v1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mMaxFlingVelocityCoefficient:I

    div-int/2addr p3, v1

    iput p3, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mMaximumFlingVelocity:I

    .line 858
    new-instance p3, Lcom/shawnlin/numberpicker/Scroller;

    const/4 v1, 0x0

    invoke-direct {p3, p1, v1, v0}, Lcom/shawnlin/numberpicker/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    iput-object p3, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mFlingScroller:Lcom/shawnlin/numberpicker/Scroller;

    .line 859
    new-instance p3, Lcom/shawnlin/numberpicker/Scroller;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x40200000    # 2.5f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-direct {p3, p1, v1}, Lcom/shawnlin/numberpicker/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object p3, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mAdjustScroller:Lcom/shawnlin/numberpicker/Scroller;

    .line 861
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x10

    if-lt p1, p3, :cond_5

    .line 863
    invoke-virtual {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->getImportantForAccessibility()I

    move-result p1

    if-nez p1, :cond_5

    .line 864
    invoke-virtual {p0, v0}, Lcom/shawnlin/numberpicker/NumberPicker;->setImportantForAccessibility(I)V

    .line 868
    :cond_5
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt p1, v1, :cond_6

    .line 870
    invoke-virtual {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->getFocusable()I

    move-result p1

    if-ne p1, p3, :cond_6

    .line 871
    invoke-virtual {p0, v0}, Lcom/shawnlin/numberpicker/NumberPicker;->setFocusable(I)V

    .line 872
    invoke-virtual {p0, v0}, Lcom/shawnlin/numberpicker/NumberPicker;->setFocusableInTouchMode(Z)V

    .line 876
    :cond_6
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$100()[C
    .locals 1

    .line 52
    sget-object v0, Lcom/shawnlin/numberpicker/NumberPicker;->DIGIT_CHARACTERS:[C

    return-object v0
.end method

.method static synthetic access$200(Lcom/shawnlin/numberpicker/NumberPicker;)Lcom/shawnlin/numberpicker/NumberPicker$SetSelectionCommand;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSetSelectionCommand:Lcom/shawnlin/numberpicker/NumberPicker$SetSelectionCommand;

    return-object p0
.end method

.method static synthetic access$300(Lcom/shawnlin/numberpicker/NumberPicker;)[Ljava/lang/String;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/shawnlin/numberpicker/NumberPicker;Ljava/lang/String;)I
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/shawnlin/numberpicker/NumberPicker;->getSelectedPos(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/shawnlin/numberpicker/NumberPicker;)I
    .locals 0

    .line 52
    iget p0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mMaxValue:I

    return p0
.end method

.method static synthetic access$600(Lcom/shawnlin/numberpicker/NumberPicker;II)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/shawnlin/numberpicker/NumberPicker;->postSetSelectionCommand(II)V

    return-void
.end method

.method static synthetic access$700(Lcom/shawnlin/numberpicker/NumberPicker;Z)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/shawnlin/numberpicker/NumberPicker;->changeValueByOne(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/shawnlin/numberpicker/NumberPicker;)J
    .locals 2

    .line 52
    iget-wide v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mLongPressUpdateInterval:J

    return-wide v0
.end method

.method private changeValueByOne(Z)V
    .locals 1

    .line 2023
    iget-object v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mFlingScroller:Lcom/shawnlin/numberpicker/Scroller;

    invoke-direct {p0, v0}, Lcom/shawnlin/numberpicker/NumberPicker;->moveToFinalScrollerPosition(Lcom/shawnlin/numberpicker/Scroller;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2024
    iget-object v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mAdjustScroller:Lcom/shawnlin/numberpicker/Scroller;

    invoke-direct {p0, v0}, Lcom/shawnlin/numberpicker/NumberPicker;->moveToFinalScrollerPosition(Lcom/shawnlin/numberpicker/Scroller;)Z

    :cond_0
    const/4 v0, 0x1

    .line 2026
    invoke-virtual {p0, p1, v0}, Lcom/shawnlin/numberpicker/NumberPicker;->smoothScroll(ZI)V

    return-void
.end method

.method private computeScrollExtent(Z)I
    .locals 0

    if-eqz p1, :cond_0

    .line 1341
    invoke-virtual {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->getWidth()I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->getHeight()I

    move-result p1

    :goto_0
    return p1
.end method

.method private computeScrollOffset(Z)I
    .locals 0

    if-eqz p1, :cond_0

    .line 1333
    iget p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mCurrentScrollOffset:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private computeScrollRange(Z)I
    .locals 1

    if-eqz p1, :cond_0

    .line 1337
    iget p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mMaxValue:I

    iget v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mMinValue:I

    sub-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x1

    iget v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectorElementSize:I

    mul-int/2addr p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private decrementSelectorIndices([I)V
    .locals 3

    .line 2186
    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-lez v0, :cond_0

    add-int/lit8 v2, v0, -0x1

    .line 2187
    aget v2, p1, v2

    aput v2, p1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2189
    :cond_0
    aget v0, p1, v1

    sub-int/2addr v0, v1

    .line 2190
    iget-boolean v1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mMinValue:I

    if-ge v0, v1, :cond_1

    .line 2191
    iget v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mMaxValue:I

    :cond_1
    const/4 v1, 0x0

    .line 2193
    aput v0, p1, v1

    .line 2194
    invoke-direct {p0, v0}, Lcom/shawnlin/numberpicker/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    return-void
.end method

.method private dpToPx(F)F
    .locals 1

    .line 2537
    invoke-virtual {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, v0

    return p1
.end method

.method private drawText(Ljava/lang/String;FFLandroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 4

    const-string v0, "\n"

    .line 1843
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1844
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1845
    invoke-virtual {p4}, Landroid/graphics/Paint;->descent()F

    move-result v0

    invoke-virtual {p4}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mLineSpacingMultiplier:F

    mul-float/2addr v0, v1

    .line 1847
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr p3, v1

    .line 1849
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 1850
    invoke-virtual {p5, v3, p2, p3, p4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-float/2addr p3, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1854
    :cond_0
    invoke-virtual {p5, p1, p2, p3, p4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method private ensureCachedScrollSelectorValue(I)V
    .locals 4

    .line 2202
    iget-object v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 2203
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    return-void

    .line 2207
    :cond_0
    iget v1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mMinValue:I

    if-lt p1, v1, :cond_4

    iget v2, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mMaxValue:I

    if-le p1, v2, :cond_1

    goto :goto_0

    .line 2210
    :cond_1
    iget-object v2, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v2, :cond_3

    sub-int v1, p1, v1

    .line 2212
    array-length v3, v2

    if-lt v1, v3, :cond_2

    .line 2213
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void

    .line 2216
    :cond_2
    aget-object v1, v2, v1

    goto :goto_1

    .line 2218
    :cond_3
    invoke-direct {p0, p1}, Lcom/shawnlin/numberpicker/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_4
    :goto_0
    const-string v1, ""

    .line 2221
    :goto_1
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private ensureScrollWheelAdjusted()Z
    .locals 8

    .line 2458
    iget v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mInitialScrollOffset:I

    iget v1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mCurrentScrollOffset:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 2460
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectorElementSize:I

    div-int/lit8 v4, v3, 0x2

    if-le v2, v4, :cond_1

    if-lez v0, :cond_0

    neg-int v3, v3

    :cond_0
    add-int/2addr v0, v3

    :cond_1
    move v6, v0

    .line 2463
    invoke-virtual {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->isHorizontalMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2464
    iput v1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mPreviousScrollerX:I

    .line 2465
    iget-object v2, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mAdjustScroller:Lcom/shawnlin/numberpicker/Scroller;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x0

    const/16 v7, 0x320

    move v5, v6

    move v6, v0

    invoke-virtual/range {v2 .. v7}, Lcom/shawnlin/numberpicker/Scroller;->startScroll(IIIII)V

    goto :goto_0

    .line 2467
    :cond_2
    iput v1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mPreviousScrollerY:I

    .line 2468
    iget-object v2, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mAdjustScroller:Lcom/shawnlin/numberpicker/Scroller;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v7, 0x320

    invoke-virtual/range {v2 .. v7}, Lcom/shawnlin/numberpicker/Scroller;->startScroll(IIIII)V

    .line 2470
    :goto_0
    invoke-virtual {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->invalidate()V

    const/4 v0, 0x1

    return v0

    :cond_3
    return v1
.end method

.method private fling(I)V
    .locals 9

    .line 2130
    invoke-virtual {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->isHorizontalMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2131
    iput v1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mPreviousScrollerX:I

    if-lez p1, :cond_0

    .line 2133
    iget-object v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mFlingScroller:Lcom/shawnlin/numberpicker/Scroller;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7fffffff

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v3, p1

    invoke-virtual/range {v0 .. v8}, Lcom/shawnlin/numberpicker/Scroller;->fling(IIIIIIII)V

    goto :goto_0

    .line 2135
    :cond_0
    iget-object v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mFlingScroller:Lcom/shawnlin/numberpicker/Scroller;

    const v1, 0x7fffffff

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7fffffff

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v3, p1

    invoke-virtual/range {v0 .. v8}, Lcom/shawnlin/numberpicker/Scroller;->fling(IIIIIIII)V

    goto :goto_0

    .line 2138
    :cond_1
    iput v1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mPreviousScrollerY:I

    if-lez p1, :cond_2

    .line 2140
    iget-object v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mFlingScroller:Lcom/shawnlin/numberpicker/Scroller;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const v8, 0x7fffffff

    move v4, p1

    invoke-virtual/range {v0 .. v8}, Lcom/shawnlin/numberpicker/Scroller;->fling(IIIIIIII)V

    goto :goto_0

    .line 2142
    :cond_2
    iget-object v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mFlingScroller:Lcom/shawnlin/numberpicker/Scroller;

    const/4 v1, 0x0

    const v2, 0x7fffffff

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const v8, 0x7fffffff

    move v4, p1

    invoke-virtual/range {v0 .. v8}, Lcom/shawnlin/numberpicker/Scroller;->fling(IIIIIIII)V

    .line 2146
    :goto_0
    invoke-virtual {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->invalidate()V

    return-void
.end method

.method private formatNumber(I)Ljava/lang/String;
    .locals 1

    .line 2225
    iget-object v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mFormatter:Lcom/shawnlin/numberpicker/NumberPicker$Formatter;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/shawnlin/numberpicker/NumberPicker$Formatter;->format(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/shawnlin/numberpicker/NumberPicker;->formatNumberWithLocale(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private formatNumberWithLocale(I)Ljava/lang/String;
    .locals 3

    .line 2533
    iget-object v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mNumberFormatter:Ljava/text/NumberFormat;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getFadingEdgeStrength(Z)F
    .locals 0

    if-eqz p1, :cond_0

    .line 1691
    iget-boolean p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mFadingEdgeEnabled:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mFadingEdgeStrength:F

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private getMaxTextSize()F
    .locals 2

    .line 1460
    iget v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mTextSize:F

    iget v1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectedTextSize:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method private getPaintCenterY(Landroid/graphics/Paint$FontMetrics;)F
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1467
    :cond_0
    iget v0, p1, Landroid/graphics/Paint$FontMetrics;->top:F

    iget p1, p1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    add-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    return p1
.end method

.method private getSelectedPos(Ljava/lang/String;)I
    .locals 2

    .line 2314
    iget-object v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2316
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :cond_0
    const/4 v0, 0x0

    .line 2321
    :goto_0
    iget-object v1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 2323
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 2324
    iget-object v1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2325
    iget p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mMinValue:I

    add-int/2addr p1, v0

    return p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2334
    :cond_2
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    return p1

    .line 2339
    :catch_0
    iget p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mMinValue:I

    return p1
.end method

.method private getSelectorIndices()[I
    .locals 1

    .line 2162
    iget-object v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectorIndices:[I

    return-object v0
.end method

.method public static final getTwoDigitFormatter()Lcom/shawnlin/numberpicker/NumberPicker$Formatter;
    .locals 1

    .line 214
    sget-object v0, Lcom/shawnlin/numberpicker/NumberPicker;->sTwoDigitFormatter:Lcom/shawnlin/numberpicker/NumberPicker$TwoDigitFormatter;

    return-object v0
.end method

.method private getWrappedSelectorIndex(I)I
    .locals 2

    .line 2153
    iget v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mMaxValue:I

    if-le p1, v0, :cond_0

    .line 2154
    iget v1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mMinValue:I

    sub-int/2addr p1, v0

    sub-int/2addr v0, v1

    rem-int/2addr p1, v0

    add-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    return v1

    .line 2155
    :cond_0
    iget v1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mMinValue:I

    if-ge p1, v1, :cond_1

    sub-int p1, v1, p1

    sub-int v1, v0, v1

    .line 2156
    rem-int/2addr p1, v1

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_1
    return p1
.end method

.method private incrementSelectorIndices([I)V
    .locals 3

    const/4 v0, 0x0

    .line 2170
    :goto_0
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    .line 2171
    aget v2, p1, v1

    aput v2, p1, v0

    move v0, v1

    goto :goto_0

    .line 2173
    :cond_0
    array-length v0, p1

    add-int/lit8 v0, v0, -0x2

    aget v0, p1, v0

    add-int/lit8 v0, v0, 0x1

    .line 2174
    iget-boolean v1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mMaxValue:I

    if-le v0, v1, :cond_1

    .line 2175
    iget v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mMinValue:I

    .line 2177
    :cond_1
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    aput v0, p1, v1

    .line 2178
    invoke-direct {p0, v0}, Lcom/shawnlin/numberpicker/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    return-void
.end method

.method private initializeFadingEdges()V
    .locals 2

    .line 2091
    invoke-virtual {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->isHorizontalMode()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2092
    invoke-virtual {p0, v1}, Lcom/shawnlin/numberpicker/NumberPicker;->setHorizontalFadingEdgeEnabled(Z)V

    .line 2093
    invoke-virtual {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->getRight()I

    move-result v0

    invoke-virtual {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mTextSize:F

    float-to-int v1, v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lcom/shawnlin/numberpicker/NumberPicker;->setFadingEdgeLength(I)V

    goto :goto_0

    .line 2095
    :cond_0
    invoke-virtual {p0, v1}, Lcom/shawnlin/numberpicker/NumberPicker;->setVerticalFadingEdgeEnabled(Z)V

    .line 2096
    invoke-virtual {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mTextSize:F

    float-to-int v1, v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lcom/shawnlin/numberpicker/NumberPicker;->setFadingEdgeLength(I)V

    :goto_0
    return-void
.end method

.method private initializeSelectorWheel()V
    .locals 4

    .line 2068
    invoke-direct {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->initializeSelectorWheelIndices()V

    .line 2069
    invoke-direct {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->getSelectorIndices()[I

    move-result-object v0

    .line 2070
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mTextSize:F

    float-to-int v2, v2

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectedTextSize:F

    float-to-int v2, v2

    add-int/2addr v1, v2

    .line 2072
    array-length v0, v0

    int-to-float v0, v0

    .line 2073
    invoke-virtual {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->isHorizontalMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2074
    invoke-virtual {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->getRight()I

    move-result v2

    invoke-virtual {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->getLeft()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    int-to-float v1, v2

    div-float/2addr v1, v0

    float-to-int v0, v1

    .line 2075
    iput v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectorTextGapWidth:I

    .line 2076
    invoke-direct {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->getMaxTextSize()F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectorTextGapWidth:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectorElementSize:I

    .line 2077
    iget v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectedTextCenterX:F

    float-to-int v0, v0

    iget v1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectorElementSize:I

    iget v2, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mWheelMiddleItemIndex:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mInitialScrollOffset:I

    goto :goto_0

    .line 2080
    :cond_0
    invoke-virtual {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    int-to-float v1, v2

    div-float/2addr v1, v0

    float-to-int v0, v1

    .line 2081
    iput v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectorTextGapHeight:I

    .line 2082
    invoke-direct {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->getMaxTextSize()F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectorTextGapHeight:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectorElementSize:I

    .line 2083
    iget v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectedTextCenterY:F

    float-to-int v0, v0

    iget v1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectorElementSize:I

    iget v2, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mWheelMiddleItemIndex:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mInitialScrollOffset:I

    .line 2086
    :goto_0
    iget v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mInitialScrollOffset:I

    iput v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mCurrentScrollOffset:I

    .line 2087
    invoke-direct {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->updateInputTextView()Z

    return-void
.end method

.method private initializeSelectorWheelIndices()V
    .locals 5

    .line 1959
    iget-object v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1960
    invoke-direct {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->getSelectorIndices()[I

    move-result-object v0

    .line 1961
    invoke-virtual {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->getValue()I

    move-result v1

    const/4 v2, 0x0

    .line 1962
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 1963
    iget v3, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mWheelMiddleItemIndex:I

    sub-int v3, v2, v3

    add-int/2addr v3, v1

    .line 1964
    iget-boolean v4, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v4, :cond_0

    .line 1965
    invoke-direct {p0, v3}, Lcom/shawnlin/numberpicker/NumberPicker;->getWrappedSelectorIndex(I)I

    move-result v3

    .line 1967
    :cond_0
    aput v3, v0, v2

    .line 1968
    aget v3, v0, v2

    invoke-direct {p0, v3}, Lcom/shawnlin/numberpicker/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private isWrappingAllowed()Z
    .locals 3

    .line 1560
    iget v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mMaxValue:I

    iget v1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mMinValue:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectorIndices:[I

    array-length v1, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private makeMeasureSpec(II)I
    .locals 4

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    return p1

    .line 1885
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 1886
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, -0x80000000

    const/high16 v3, 0x40000000    # 2.0f

    if-eq v1, v2, :cond_3

    if-eqz v1, :cond_2

    if-ne v1, v3, :cond_1

    return p1

    .line 1895
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown measure mode: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1893
    :cond_2
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    return p1

    .line 1891
    :cond_3
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    return p1
.end method

.method private moveToFinalScrollerPosition(Lcom/shawnlin/numberpicker/Scroller;)Z
    .locals 6

    const/4 v0, 0x1

    .line 934
    invoke-virtual {p1, v0}, Lcom/shawnlin/numberpicker/Scroller;->forceFinished(Z)V

    .line 935
    invoke-virtual {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->isHorizontalMode()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 936
    invoke-virtual {p1}, Lcom/shawnlin/numberpicker/Scroller;->getFinalX()I

    move-result v1

    invoke-virtual {p1}, Lcom/shawnlin/numberpicker/Scroller;->getCurrX()I

    move-result p1

    sub-int/2addr v1, p1

    .line 937
    iget p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mCurrentScrollOffset:I

    add-int/2addr p1, v1

    iget v3, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectorElementSize:I

    rem-int/2addr p1, v3

    .line 938
    iget v3, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mInitialScrollOffset:I

    sub-int/2addr v3, p1

    if-eqz v3, :cond_5

    .line 940
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget v4, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectorElementSize:I

    div-int/lit8 v5, v4, 0x2

    if-le p1, v5, :cond_1

    if-lez v3, :cond_0

    sub-int/2addr v3, v4

    goto :goto_0

    :cond_0
    add-int/2addr v3, v4

    :cond_1
    :goto_0
    add-int/2addr v1, v3

    .line 948
    invoke-virtual {p0, v1, v2}, Lcom/shawnlin/numberpicker/NumberPicker;->scrollBy(II)V

    return v0

    .line 952
    :cond_2
    invoke-virtual {p1}, Lcom/shawnlin/numberpicker/Scroller;->getFinalY()I

    move-result v1

    invoke-virtual {p1}, Lcom/shawnlin/numberpicker/Scroller;->getCurrY()I

    move-result p1

    sub-int/2addr v1, p1

    .line 953
    iget p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mCurrentScrollOffset:I

    add-int/2addr p1, v1

    iget v3, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectorElementSize:I

    rem-int/2addr p1, v3

    .line 954
    iget v3, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mInitialScrollOffset:I

    sub-int/2addr v3, p1

    if-eqz v3, :cond_5

    .line 956
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget v4, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectorElementSize:I

    div-int/lit8 v5, v4, 0x2

    if-le p1, v5, :cond_4

    if-lez v3, :cond_3

    sub-int/2addr v3, v4

    goto :goto_1

    :cond_3
    add-int/2addr v3, v4

    :cond_4
    :goto_1
    add-int/2addr v1, v3

    .line 964
    invoke-virtual {p0, v2, v1}, Lcom/shawnlin/numberpicker/NumberPicker;->scrollBy(II)V

    return v0

    :cond_5
    return v2
.end method

.method private notifyChange(II)V
    .locals 1

    .line 2260
    iget-object p2, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mOnValueChangeListener:Lcom/shawnlin/numberpicker/NumberPicker$OnValueChangeListener;

    if-eqz p2, :cond_0

    .line 2261
    iget v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mValue:I

    invoke-interface {p2, p0, p1, v0}, Lcom/shawnlin/numberpicker/NumberPicker$OnValueChangeListener;->onValueChange(Lcom/shawnlin/numberpicker/NumberPicker;II)V

    :cond_0
    return-void
.end method

.method private onScrollStateChange(I)V
    .locals 1

    .line 2117
    iget v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mScrollState:I

    if-ne v0, p1, :cond_0

    return-void

    .line 2120
    :cond_0
    iput p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mScrollState:I

    .line 2121
    iget-object v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mOnScrollListener:Lcom/shawnlin/numberpicker/NumberPicker$OnScrollListener;

    if-eqz v0, :cond_1

    .line 2122
    invoke-interface {v0, p0, p1}, Lcom/shawnlin/numberpicker/NumberPicker$OnScrollListener;->onScrollStateChange(Lcom/shawnlin/numberpicker/NumberPicker;I)V

    :cond_1
    return-void
.end method

.method private onScrollerFinished(Lcom/shawnlin/numberpicker/Scroller;)V
    .locals 1

    .line 2104
    iget-object v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mFlingScroller:Lcom/shawnlin/numberpicker/Scroller;

    if-ne p1, v0, :cond_0

    .line 2105
    invoke-direct {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->ensureScrollWheelAdjusted()Z

    .line 2106
    invoke-direct {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->updateInputTextView()Z

    const/4 p1, 0x0

    .line 2107
    invoke-direct {p0, p1}, Lcom/shawnlin/numberpicker/NumberPicker;->onScrollStateChange(I)V

    goto :goto_0

    .line 2108
    :cond_0
    iget p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mScrollState:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    .line 2109
    invoke-direct {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->updateInputTextView()Z

    :cond_1
    :goto_0
    return-void
.end method

.method private postChangeCurrentByOneFromLongPress(Z)V
    .locals 2

    .line 2286
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, p1, v0, v1}, Lcom/shawnlin/numberpicker/NumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    return-void
.end method

.method private postChangeCurrentByOneFromLongPress(ZJ)V
    .locals 1

    .line 2271
    iget-object v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/shawnlin/numberpicker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-nez v0, :cond_0

    .line 2272
    new-instance v0, Lcom/shawnlin/numberpicker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-direct {v0, p0}, Lcom/shawnlin/numberpicker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;-><init>(Lcom/shawnlin/numberpicker/NumberPicker;)V

    iput-object v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/shawnlin/numberpicker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    goto :goto_0

    .line 2274
    :cond_0
    invoke-virtual {p0, v0}, Lcom/shawnlin/numberpicker/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2276
    :goto_0
    iget-object v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/shawnlin/numberpicker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-static {v0, p1}, Lcom/shawnlin/numberpicker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->access$000(Lcom/shawnlin/numberpicker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;Z)V

    .line 2277
    iget-object p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/shawnlin/numberpicker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, p1, p2, p3}, Lcom/shawnlin/numberpicker/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private postSetSelectionCommand(II)V
    .locals 1

    .line 2347
    iget-object v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSetSelectionCommand:Lcom/shawnlin/numberpicker/NumberPicker$SetSelectionCommand;

    if-nez v0, :cond_0

    .line 2348
    new-instance p1, Lcom/shawnlin/numberpicker/NumberPicker$SetSelectionCommand;

    iget-object p2, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectedText:Landroid/widget/EditText;

    invoke-direct {p1, p2}, Lcom/shawnlin/numberpicker/NumberPicker$SetSelectionCommand;-><init>(Landroid/widget/EditText;)V

    iput-object p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSetSelectionCommand:Lcom/shawnlin/numberpicker/NumberPicker$SetSelectionCommand;

    goto :goto_0

    .line 2350
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/shawnlin/numberpicker/NumberPicker$SetSelectionCommand;->post(II)V

    :goto_0
    return-void
.end method

.method private pxToDp(F)F
    .locals 1

    .line 2541
    invoke-virtual {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p1, v0

    return p1
.end method

.method private pxToSp(F)F
    .locals 1

    .line 2550
    invoke-virtual {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    div-float/2addr p1, v0

    return p1
.end method

.method private removeAllCallbacks()V
    .locals 1

    .line 2302
    iget-object v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/shawnlin/numberpicker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_0

    .line 2303
    invoke-virtual {p0, v0}, Lcom/shawnlin/numberpicker/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2305
    :cond_0
    iget-object v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSetSelectionCommand:Lcom/shawnlin/numberpicker/NumberPicker$SetSelectionCommand;

    if-eqz v0, :cond_1

    .line 2306
    invoke-virtual {v0}, Lcom/shawnlin/numberpicker/NumberPicker$SetSelectionCommand;->cancel()V

    :cond_1
    return-void
.end method

.method private removeChangeCurrentByOneFromLongPress()V
    .locals 1

    .line 2293
    iget-object v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/shawnlin/numberpicker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_0

    .line 2294
    invoke-virtual {p0, v0}, Lcom/shawnlin/numberpicker/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public static resolveSizeAndState(III)I
    .locals 2

    .line 1934
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 1935
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_2

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move p0, p1

    goto :goto_0

    :cond_1
    if-ge p1, p0, :cond_2

    const/high16 p0, 0x1000000

    or-int/2addr p0, p1

    :cond_2
    :goto_0
    const/high16 p1, -0x1000000

    and-int/2addr p1, p2

    or-int/2addr p0, p1

    return p0
.end method

.method private resolveSizeAndStateRespectingMinSize(III)I
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 1912
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/4 p2, 0x0

    .line 1913
    invoke-static {p1, p3, p2}, Lcom/shawnlin/numberpicker/NumberPicker;->resolveSizeAndState(III)I

    move-result p1

    return p1

    :cond_0
    return p2
.end method

.method private setValueInternal(IZ)V
    .locals 3

    .line 1979
    iget v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mValue:I

    if-ne v0, p1, :cond_0

    return-void

    .line 1983
    :cond_0
    iget-boolean v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v0, :cond_1

    .line 1984
    invoke-direct {p0, p1}, Lcom/shawnlin/numberpicker/NumberPicker;->getWrappedSelectorIndex(I)I

    move-result p1

    goto :goto_0

    .line 1986
    :cond_1
    iget v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mMinValue:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1987
    iget v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mMaxValue:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1989
    :goto_0
    iget v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mValue:I

    .line 1990
    iput p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mValue:I

    .line 1992
    iget v1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mScrollState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    .line 1993
    invoke-direct {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->updateInputTextView()Z

    :cond_2
    if-eqz p2, :cond_3

    .line 1996
    invoke-direct {p0, v0, p1}, Lcom/shawnlin/numberpicker/NumberPicker;->notifyChange(II)V

    .line 1998
    :cond_3
    invoke-direct {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1999
    invoke-direct {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->updateAccessibilityDescription()V

    .line 2000
    invoke-virtual {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->invalidate()V

    return-void
.end method

.method private setWidthAndHeight()V
    .locals 4

    .line 2567
    invoke-virtual {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->isHorizontalMode()Z

    move-result v0

    const/high16 v1, 0x42800000    # 64.0f

    const/high16 v2, 0x43340000    # 180.0f

    const/4 v3, -0x1

    if-eqz v0, :cond_0

    .line 2568
    iput v3, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mMinHeight:I

    .line 2569
    invoke-direct {p0, v1}, Lcom/shawnlin/numberpicker/NumberPicker;->dpToPx(F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mMaxHeight:I

    .line 2570
    invoke-direct {p0, v2}, Lcom/shawnlin/numberpicker/NumberPicker;->dpToPx(F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mMinWidth:I

    .line 2571
    iput v3, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mMaxWidth:I

    goto :goto_0

    .line 2573
    :cond_0
    iput v3, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mMinHeight:I

    .line 2574
    invoke-direct {p0, v2}, Lcom/shawnlin/numberpicker/NumberPicker;->dpToPx(F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mMaxHeight:I

    .line 2575
    invoke-direct {p0, v1}, Lcom/shawnlin/numberpicker/NumberPicker;->dpToPx(F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mMinWidth:I

    .line 2576
    iput v3, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mMaxWidth:I

    :goto_0
    return-void
.end method

.method private spToPx(F)F
    .locals 2

    .line 2546
    invoke-virtual {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x2

    .line 2545
    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    return p1
.end method

.method private stringToFormatter(Ljava/lang/String;)Lcom/shawnlin/numberpicker/NumberPicker$Formatter;
    .locals 1

    .line 2554
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2558
    :cond_0
    new-instance v0, Lcom/shawnlin/numberpicker/NumberPicker$1;

    invoke-direct {v0, p0, p1}, Lcom/shawnlin/numberpicker/NumberPicker$1;-><init>(Lcom/shawnlin/numberpicker/NumberPicker;Ljava/lang/String;)V

    return-object v0
.end method

.method private tryComputeMaxWidth()V
    .locals 5

    .line 1474
    iget-boolean v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mComputeMaxWidth:Z

    if-nez v0, :cond_0

    return-void

    .line 1477
    :cond_0
    iget-object v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->getMaxTextSize()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1479
    iget-object v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    move v2, v0

    move v0, v1

    :goto_0
    const/16 v3, 0x9

    if-gt v0, v3, :cond_2

    .line 1482
    iget-object v3, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-direct {p0, v0}, Lcom/shawnlin/numberpicker/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    cmpl-float v4, v3, v2

    if-lez v4, :cond_1

    move v2, v3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1488
    :cond_2
    iget v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mMaxValue:I

    :goto_1
    if-lez v0, :cond_3

    add-int/lit8 v1, v1, 0x1

    .line 1491
    div-int/lit8 v0, v0, 0xa

    goto :goto_1

    :cond_3
    int-to-float v0, v1

    mul-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_3

    .line 1495
    :cond_4
    array-length v0, v0

    move v2, v1

    :goto_2
    if-ge v1, v0, :cond_6

    .line 1497
    iget-object v3, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    int-to-float v4, v2

    cmpl-float v4, v3, v4

    if-lez v4, :cond_5

    float-to-int v2, v3

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    move v0, v2

    .line 1503
    :goto_3
    iget-object v1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectedText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectedText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 1504
    iget v1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mMaxWidth:I

    if-eq v1, v0, :cond_8

    .line 1505
    iget v1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mMinWidth:I

    if-le v0, v1, :cond_7

    .line 1506
    iput v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mMaxWidth:I

    goto :goto_4

    .line 1508
    :cond_7
    iput v1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mMaxWidth:I

    .line 1510
    :goto_4
    invoke-virtual {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->invalidate()V

    :cond_8
    return-void
.end method

.method private updateAccessibilityDescription()V
    .locals 1

    .line 2008
    iget-boolean v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mAccessibilityDescriptionEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 2012
    :cond_0
    invoke-virtual {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/shawnlin/numberpicker/NumberPicker;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateInputTextView()Z
    .locals 3

    .line 2242
    iget-object v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mValue:I

    invoke-direct {p0, v0}, Lcom/shawnlin/numberpicker/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mValue:I

    iget v2, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mMinValue:I

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    .line 2244
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2245
    iget-object v1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectedText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 2246
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2247
    iget-object v1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectedText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private updateWrapSelectorWheel()V
    .locals 1

    .line 1556
    invoke-direct {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->isWrappingAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mWrapSelectorWheelPreferred:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mWrapSelectorWheel:Z

    return-void
.end method


# virtual methods
.method protected computeHorizontalScrollExtent()I
    .locals 1

    .line 1356
    invoke-virtual {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->isHorizontalMode()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/shawnlin/numberpicker/NumberPicker;->computeScrollExtent(Z)I

    move-result v0

    return v0
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 1

    .line 1346
    invoke-virtual {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->isHorizontalMode()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/shawnlin/numberpicker/NumberPicker;->computeScrollOffset(Z)I

    move-result v0

    return v0
.end method

.method protected computeHorizontalScrollRange()I
    .locals 1

    .line 1351
    invoke-virtual {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->isHorizontalMode()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/shawnlin/numberpicker/NumberPicker;->computeScrollRange(Z)I

    move-result v0

    return v0
.end method

.method public computeScroll()V
    .locals 4

    .line 1194
    invoke-virtual {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->isScrollerEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1198
    :cond_0
    iget-object v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mFlingScroller:Lcom/shawnlin/numberpicker/Scroller;

    .line 1199
    invoke-virtual {v0}, Lcom/shawnlin/numberpicker/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1200
    iget-object v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mAdjustScroller:Lcom/shawnlin/numberpicker/Scroller;

    .line 1201
    invoke-virtual {v0}, Lcom/shawnlin/numberpicker/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 1205
    :cond_1
    invoke-virtual {v0}, Lcom/shawnlin/numberpicker/Scroller;->computeScrollOffset()Z

    .line 1206
    invoke-virtual {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->isHorizontalMode()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 1207
    invoke-virtual {v0}, Lcom/shawnlin/numberpicker/Scroller;->getCurrX()I

    move-result v1

    .line 1208
    iget v3, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mPreviousScrollerX:I

    if-nez v3, :cond_2

    .line 1209
    invoke-virtual {v0}, Lcom/shawnlin/numberpicker/Scroller;->getStartX()I

    move-result v3

    iput v3, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mPreviousScrollerX:I

    .line 1211
    :cond_2
    iget v3, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mPreviousScrollerX:I

    sub-int v3, v1, v3

    invoke-virtual {p0, v3, v2}, Lcom/shawnlin/numberpicker/NumberPicker;->scrollBy(II)V

    .line 1212
    iput v1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mPreviousScrollerX:I

    goto :goto_0

    .line 1214
    :cond_3
    invoke-virtual {v0}, Lcom/shawnlin/numberpicker/Scroller;->getCurrY()I

    move-result v1

    .line 1215
    iget v3, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mPreviousScrollerY:I

    if-nez v3, :cond_4

    .line 1216
    invoke-virtual {v0}, Lcom/shawnlin/numberpicker/Scroller;->getStartY()I

    move-result v3

    iput v3, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mPreviousScrollerY:I

    .line 1218
    :cond_4
    iget v3, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mPreviousScrollerY:I

    sub-int v3, v1, v3

    invoke-virtual {p0, v2, v3}, Lcom/shawnlin/numberpicker/NumberPicker;->scrollBy(II)V

    .line 1219
    iput v1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mPreviousScrollerY:I

    .line 1221
    :goto_0
    invoke-virtual {v0}, Lcom/shawnlin/numberpicker/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1222
    invoke-direct {p0, v0}, Lcom/shawnlin/numberpicker/NumberPicker;->onScrollerFinished(Lcom/shawnlin/numberpicker/Scroller;)V

    goto :goto_1

    .line 1224
    :cond_5
    invoke-virtual {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->postInvalidate()V

    :goto_1
    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .locals 1

    .line 1371
    invoke-virtual {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->isHorizontalMode()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/shawnlin/numberpicker/NumberPicker;->computeScrollExtent(Z)I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 1

    .line 1361
    invoke-virtual {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->isHorizontalMode()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/shawnlin/numberpicker/NumberPicker;->computeScrollOffset(Z)I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .locals 1

    .line 1366
    invoke-virtual {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->isHorizontalMode()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/shawnlin/numberpicker/NumberPicker;->computeScrollRange(Z)I

    move-result v0

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    .line 1148
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x13

    const/16 v2, 0x14

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_1

    const/16 v1, 0x17

    if-eq v0, v1, :cond_0

    const/16 v1, 0x42

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1152
    :cond_0
    invoke-direct {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->removeAllCallbacks()V

    goto :goto_0

    .line 1156
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v3, :cond_2

    goto :goto_0

    .line 1170
    :cond_2
    iget v1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mLastHandledDownDpadKeyCode:I

    if-ne v1, v0, :cond_5

    const/4 p1, -0x1

    .line 1171
    iput p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mLastHandledDownDpadKeyCode:I

    return v3

    .line 1158
    :cond_3
    iget-boolean v1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_6

    if-ne v0, v2, :cond_4

    .line 1159
    invoke-virtual {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->getValue()I

    move-result v1

    invoke-virtual {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->getMaxValue()I

    move-result v4

    if-ge v1, v4, :cond_5

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->getValue()I

    move-result v1

    invoke-virtual {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->getMinValue()I

    move-result v4

    if-le v1, v4, :cond_5

    goto :goto_1

    .line 1177
    :cond_5
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 1160
    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->requestFocus()Z

    .line 1161
    iput v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mLastHandledDownDpadKeyCode:I

    .line 1162
    invoke-direct {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->removeAllCallbacks()V

    .line 1163
    iget-object p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mFlingScroller:Lcom/shawnlin/numberpicker/Scroller;

    invoke-virtual {p1}, Lcom/shawnlin/numberpicker/Scroller;->isFinished()Z

    move-result p1

    if-eqz p1, :cond_8

    if-ne v0, v2, :cond_7

    move p1, v3

    goto :goto_2

    :cond_7
    const/4 p1, 0x0

    .line 1164
    :goto_2
    invoke-direct {p0, p1}, Lcom/shawnlin/numberpicker/NumberPicker;->changeValueByOne(Z)V

    :cond_8
    return v3
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1136
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1140
    :cond_0
    invoke-direct {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->removeAllCallbacks()V

    .line 1143
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1182
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1186
    :cond_0
    invoke-direct {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->removeAllCallbacks()V

    .line 1189
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected drawableStateChanged()V
    .locals 2

    .line 1723
    invoke-super {p0}, Landroid/widget/LinearLayout;->drawableStateChanged()V

    .line 1724
    iget-object v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1725
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1726
    invoke-virtual {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1727
    invoke-virtual {p0, v0}, Lcom/shawnlin/numberpicker/NumberPicker;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 1

    .line 1701
    invoke-virtual {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->isHorizontalMode()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/shawnlin/numberpicker/NumberPicker;->getFadingEdgeStrength(Z)F

    move-result v0

    return v0
.end method

.method public getDisplayedValues()[Ljava/lang/String;
    .locals 1

    .line 1661
    iget-object v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    return-object v0
.end method

.method public getDividerColor()I
    .locals 1

    .line 2799
    iget v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mDividerColor:I

    return v0
.end method

.method public getDividerDistance()F
    .locals 1

    .line 2803
    iget v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mDividerDistance:I

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/shawnlin/numberpicker/NumberPicker;->pxToDp(F)F

    move-result v0

    return v0
.end method

.method public getDividerThickness()F
    .locals 1

    .line 2807
    iget v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mDividerThickness:I

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/shawnlin/numberpicker/NumberPicker;->pxToDp(F)F

    move-result v0

    return v0
.end method

.method public getFadingEdgeStrength()F
    .locals 1

    .line 2831
    iget v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mFadingEdgeStrength:F

    return v0
.end method

.method public getFormatter()Lcom/shawnlin/numberpicker/NumberPicker$Formatter;
    .locals 1

    .line 2823
    iget-object v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mFormatter:Lcom/shawnlin/numberpicker/NumberPicker$Formatter;

    return-object v0
.end method

.method protected getLeftFadingEdgeStrength()F
    .locals 1

    .line 1706
    invoke-virtual {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->isHorizontalMode()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/shawnlin/numberpicker/NumberPicker;->getFadingEdgeStrength(Z)F

    move-result v0

    return v0
.end method

.method public getLineSpacingMultiplier()F
    .locals 1

    .line 2883
    iget v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mLineSpacingMultiplier:F

    return v0
.end method

.method public getMaxFlingVelocityCoefficient()I
    .locals 1

    .line 2887
    iget v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mMaxFlingVelocityCoefficient:I

    return v0
.end method

.method public getMaxValue()I
    .locals 1

    .line 1626
    iget v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mMaxValue:I

    return v0
.end method

.method public getMinValue()I
    .locals 1

    .line 1592
    iget v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mMinValue:I

    return v0
.end method

.method public getOrder()I
    .locals 1

    .line 2811
    iget v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mOrder:I

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .line 2815
    iget v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mOrientation:I

    return v0
.end method

.method protected getRightFadingEdgeStrength()F
    .locals 1

    .line 1711
    invoke-virtual {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->isHorizontalMode()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/shawnlin/numberpicker/NumberPicker;->getFadingEdgeStrength(Z)F

    move-result v0

    return v0
.end method

.method public getSelectedTextAlign()I
    .locals 1

    .line 2839
    iget v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectedTextAlign:I

    return v0
.end method

.method public getSelectedTextColor()I
    .locals 1

    .line 2843
    iget v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectedTextColor:I

    return v0
.end method

.method public getSelectedTextSize()F
    .locals 1

    .line 2847
    iget v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectedTextSize:F

    return v0
.end method

.method public getSelectedTextStrikeThru()Z
    .locals 1

    .line 2851
    iget-boolean v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectedTextStrikeThru:Z

    return v0
.end method

.method public getSelectedTextUnderline()Z
    .locals 1

    .line 2855
    iget-boolean v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectedTextUnderline:Z

    return v0
.end method

.method public getTextAlign()I
    .locals 1

    .line 2859
    iget v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mTextAlign:I

    return v0
.end method

.method public getTextColor()I
    .locals 1

    .line 2863
    iget v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mTextColor:I

    return v0
.end method

.method public getTextSize()F
    .locals 1

    .line 2867
    iget v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mTextSize:F

    invoke-direct {p0, v0}, Lcom/shawnlin/numberpicker/NumberPicker;->spToPx(F)F

    move-result v0

    return v0
.end method

.method public getTextStrikeThru()Z
    .locals 1

    .line 2871
    iget-boolean v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mTextStrikeThru:Z

    return v0
.end method

.method public getTextUnderline()Z
    .locals 1

    .line 2875
    iget-boolean v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mTextUnderline:Z

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 1

    .line 1696
    invoke-virtual {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->isHorizontalMode()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/shawnlin/numberpicker/NumberPicker;->getFadingEdgeStrength(Z)F

    move-result v0

    return v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    .line 2879
    iget-object v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .line 1583
    iget v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mValue:I

    return v0
.end method

.method public getWheelItemCount()I
    .locals 1

    .line 2819
    iget v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mWheelItemCount:I

    return v0
.end method

.method public getWrapSelectorWheel()Z
    .locals 1

    .line 1523
    iget-boolean v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mWrapSelectorWheel:Z

    return v0
.end method

.method public isAccessibilityDescriptionEnabled()Z
    .locals 1

    .line 2795
    iget-boolean v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mAccessibilityDescriptionEnabled:Z

    return v0
.end method

.method public isAscendingOrder()Z
    .locals 1

    .line 2791
    invoke-virtual {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->getOrder()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFadingEdgeEnabled()Z
    .locals 1

    .line 2827
    iget-boolean v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mFadingEdgeEnabled:Z

    return v0
.end method

.method public isHorizontalMode()Z
    .locals 1

    .line 2787
    invoke-virtual {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->getOrientation()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isScrollerEnabled()Z
    .locals 1

    .line 2835
    iget-boolean v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mScrollerEnabled:Z

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .line 1734
    invoke-super {p0}, Landroid/widget/LinearLayout;->jumpDrawablesToCurrentState()V

    .line 1735
    iget-object v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1736
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1376
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1377
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object p1

    iput-object p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mNumberFormatter:Ljava/text/NumberFormat;

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 1716
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 1717
    invoke-direct {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->removeAllCallbacks()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 1743
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1745
    iget-boolean v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mHideWheelUntilFocused:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->hasFocus()Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1747
    :goto_0
    invoke-virtual {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->isHorizontalMode()Z

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 1748
    iget v2, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mCurrentScrollOffset:I

    int-to-float v2, v2

    .line 1749
    iget-object v5, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectedText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getBaseline()I

    move-result v5

    iget-object v6, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectedText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getTop()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    .line 1750
    iget v6, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mRealWheelItemCount:I

    if-ge v6, v3, :cond_2

    .line 1751
    iget v3, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mLeftDividerLeft:I

    iget v6, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mRightDividerRight:I

    invoke-virtual {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->getBottom()I

    move-result v7

    invoke-virtual {p1, v3, v4, v6, v7}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto :goto_1

    .line 1754
    :cond_1
    invoke-virtual {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->getRight()I

    move-result v2

    invoke-virtual {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->getLeft()I

    move-result v5

    sub-int/2addr v2, v5

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    .line 1755
    iget v5, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mCurrentScrollOffset:I

    int-to-float v5, v5

    .line 1756
    iget v6, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mRealWheelItemCount:I

    if-ge v6, v3, :cond_2

    .line 1757
    iget v3, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mTopDividerTop:I

    invoke-virtual {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->getRight()I

    move-result v6

    iget v7, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mBottomDividerBottom:I

    invoke-virtual {p1, v4, v3, v6, v7}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 1762
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->getSelectorIndices()[I

    move-result-object v3

    move v12, v2

    move v2, v4

    .line 1763
    :goto_2
    array-length v6, v3

    if-ge v2, v6, :cond_b

    .line 1764
    iget v6, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mWheelMiddleItemIndex:I

    if-ne v2, v6, :cond_3

    .line 1765
    iget-object v6, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-static {}, Landroid/graphics/Paint$Align;->values()[Landroid/graphics/Paint$Align;

    move-result-object v7

    iget v8, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectedTextAlign:I

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1766
    iget-object v6, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v7, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectedTextSize:F

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1767
    iget-object v6, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v7, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectedTextColor:I

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 1768
    iget-object v6, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget-boolean v7, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectedTextStrikeThru:Z

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStrikeThruText(Z)V

    .line 1769
    iget-object v6, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget-boolean v7, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectedTextUnderline:Z

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    goto :goto_3

    .line 1771
    :cond_3
    iget-object v6, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-static {}, Landroid/graphics/Paint$Align;->values()[Landroid/graphics/Paint$Align;

    move-result-object v7

    iget v8, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mTextAlign:I

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1772
    iget-object v6, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v7, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mTextSize:F

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1773
    iget-object v6, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v7, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mTextColor:I

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 1774
    iget-object v6, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget-boolean v7, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mTextStrikeThru:Z

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStrikeThruText(Z)V

    .line 1775
    iget-object v6, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget-boolean v7, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mTextUnderline:Z

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 1778
    :goto_3
    invoke-virtual {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->isAscendingOrder()Z

    move-result v6

    if-eqz v6, :cond_4

    move v6, v2

    goto :goto_4

    :cond_4
    array-length v6, v3

    sub-int/2addr v6, v2

    sub-int/2addr v6, v1

    :goto_4
    aget v6, v3, v6

    .line 1780
    iget-object v7, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Ljava/lang/String;

    if-nez v7, :cond_5

    goto :goto_6

    :cond_5
    if-eqz v0, :cond_6

    .line 1789
    iget v6, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mWheelMiddleItemIndex:I

    if-ne v2, v6, :cond_7

    :cond_6
    iget v6, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mWheelMiddleItemIndex:I

    if-ne v2, v6, :cond_9

    iget-object v6, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectedText:Landroid/widget/EditText;

    .line 1790
    invoke-virtual {v6}, Landroid/widget/EditText;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_9

    .line 1792
    :cond_7
    invoke-virtual {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->isHorizontalMode()Z

    move-result v6

    if-nez v6, :cond_8

    .line 1793
    iget-object v6, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/shawnlin/numberpicker/NumberPicker;->getPaintCenterY(Landroid/graphics/Paint$FontMetrics;)F

    move-result v6

    add-float/2addr v6, v5

    move v9, v6

    goto :goto_5

    :cond_8
    move v9, v5

    .line 1795
    :goto_5
    iget-object v10, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object v6, p0

    move v8, v12

    move-object v11, p1

    invoke-direct/range {v6 .. v11}, Lcom/shawnlin/numberpicker/NumberPicker;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 1798
    :cond_9
    invoke-virtual {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->isHorizontalMode()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1799
    iget v6, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectorElementSize:I

    int-to-float v6, v6

    add-float/2addr v12, v6

    goto :goto_6

    .line 1801
    :cond_a
    iget v6, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectorElementSize:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 1806
    :cond_b
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    if-eqz v0, :cond_d

    .line 1809
    iget-object v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_d

    .line 1810
    invoke-virtual {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->isHorizontalMode()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1811
    invoke-virtual {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->getBottom()I

    move-result v0

    .line 1814
    iget v1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mLeftDividerLeft:I

    .line 1815
    iget v2, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mDividerThickness:I

    add-int/2addr v2, v1

    .line 1816
    iget-object v3, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v1, v4, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1817
    iget-object v1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1820
    iget v1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mRightDividerRight:I

    .line 1821
    iget v2, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mDividerThickness:I

    sub-int v2, v1, v2

    .line 1822
    iget-object v3, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v2, v4, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1823
    iget-object v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_7

    .line 1825
    :cond_c
    invoke-virtual {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->getRight()I

    move-result v0

    .line 1828
    iget v1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mTopDividerTop:I

    .line 1829
    iget v2, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mDividerThickness:I

    add-int/2addr v2, v1

    .line 1830
    iget-object v3, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4, v1, v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1831
    iget-object v1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1834
    iget v1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mBottomDividerBottom:I

    .line 1835
    iget v2, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mDividerThickness:I

    sub-int v2, v1, v2

    .line 1836
    iget-object v3, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1837
    iget-object v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_d
    :goto_7
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4

    .line 1860
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1861
    const-class v0, Lcom/shawnlin/numberpicker/NumberPicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1862
    invoke-virtual {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->isScrollerEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 1863
    iget v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mMinValue:I

    iget v1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mValue:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectorElementSize:I

    mul-int/2addr v1, v2

    .line 1864
    iget v3, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mMaxValue:I

    sub-int/2addr v3, v0

    mul-int/2addr v3, v2

    .line 1865
    invoke-virtual {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->isHorizontalMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1866
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollX(I)V

    .line 1867
    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollX(I)V

    goto :goto_0

    .line 1869
    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    .line 1870
    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    :goto_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 973
    invoke-virtual {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 977
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-eqz v0, :cond_1

    return v1

    .line 980
    :cond_1
    invoke-direct {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->removeAllCallbacks()V

    .line 982
    invoke-virtual {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 984
    invoke-virtual {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->isHorizontalMode()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 985
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mLastDownEventX:F

    iput p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mLastDownOrMoveEventX:F

    .line 986
    iget-object p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mFlingScroller:Lcom/shawnlin/numberpicker/Scroller;

    invoke-virtual {p1}, Lcom/shawnlin/numberpicker/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_2

    .line 987
    iget-object p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mFlingScroller:Lcom/shawnlin/numberpicker/Scroller;

    invoke-virtual {p1, v2}, Lcom/shawnlin/numberpicker/Scroller;->forceFinished(Z)V

    .line 988
    iget-object p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mAdjustScroller:Lcom/shawnlin/numberpicker/Scroller;

    invoke-virtual {p1, v2}, Lcom/shawnlin/numberpicker/Scroller;->forceFinished(Z)V

    .line 989
    invoke-direct {p0, v1}, Lcom/shawnlin/numberpicker/NumberPicker;->onScrollStateChange(I)V

    goto/16 :goto_0

    .line 990
    :cond_2
    iget-object p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mAdjustScroller:Lcom/shawnlin/numberpicker/Scroller;

    invoke-virtual {p1}, Lcom/shawnlin/numberpicker/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_3

    .line 991
    iget-object p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mFlingScroller:Lcom/shawnlin/numberpicker/Scroller;

    invoke-virtual {p1, v2}, Lcom/shawnlin/numberpicker/Scroller;->forceFinished(Z)V

    .line 992
    iget-object p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mAdjustScroller:Lcom/shawnlin/numberpicker/Scroller;

    invoke-virtual {p1, v2}, Lcom/shawnlin/numberpicker/Scroller;->forceFinished(Z)V

    goto/16 :goto_0

    .line 993
    :cond_3
    iget p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mLastDownEventX:F

    iget v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mLeftDividerLeft:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_4

    iget v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mRightDividerRight:I

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_4

    .line 995
    iget-object p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz p1, :cond_b

    .line 996
    invoke-interface {p1, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto/16 :goto_0

    .line 998
    :cond_4
    iget p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mLastDownEventX:F

    iget v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mLeftDividerLeft:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_5

    .line 999
    invoke-direct {p0, v1}, Lcom/shawnlin/numberpicker/NumberPicker;->postChangeCurrentByOneFromLongPress(Z)V

    goto/16 :goto_0

    .line 1000
    :cond_5
    iget v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mRightDividerRight:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_b

    .line 1001
    invoke-direct {p0, v2}, Lcom/shawnlin/numberpicker/NumberPicker;->postChangeCurrentByOneFromLongPress(Z)V

    goto :goto_0

    .line 1004
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mLastDownEventY:F

    iput p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mLastDownOrMoveEventY:F

    .line 1005
    iget-object p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mFlingScroller:Lcom/shawnlin/numberpicker/Scroller;

    invoke-virtual {p1}, Lcom/shawnlin/numberpicker/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_7

    .line 1006
    iget-object p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mFlingScroller:Lcom/shawnlin/numberpicker/Scroller;

    invoke-virtual {p1, v2}, Lcom/shawnlin/numberpicker/Scroller;->forceFinished(Z)V

    .line 1007
    iget-object p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mAdjustScroller:Lcom/shawnlin/numberpicker/Scroller;

    invoke-virtual {p1, v2}, Lcom/shawnlin/numberpicker/Scroller;->forceFinished(Z)V

    .line 1008
    invoke-direct {p0, v1}, Lcom/shawnlin/numberpicker/NumberPicker;->onScrollStateChange(I)V

    goto :goto_0

    .line 1009
    :cond_7
    iget-object p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mAdjustScroller:Lcom/shawnlin/numberpicker/Scroller;

    invoke-virtual {p1}, Lcom/shawnlin/numberpicker/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_8

    .line 1010
    iget-object p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mFlingScroller:Lcom/shawnlin/numberpicker/Scroller;

    invoke-virtual {p1, v2}, Lcom/shawnlin/numberpicker/Scroller;->forceFinished(Z)V

    .line 1011
    iget-object p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mAdjustScroller:Lcom/shawnlin/numberpicker/Scroller;

    invoke-virtual {p1, v2}, Lcom/shawnlin/numberpicker/Scroller;->forceFinished(Z)V

    goto :goto_0

    .line 1012
    :cond_8
    iget p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mLastDownEventY:F

    iget v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mTopDividerTop:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_9

    iget v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mBottomDividerBottom:I

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_9

    .line 1014
    iget-object p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz p1, :cond_b

    .line 1015
    invoke-interface {p1, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 1017
    :cond_9
    iget p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mLastDownEventY:F

    iget v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mTopDividerTop:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_a

    .line 1018
    invoke-direct {p0, v1}, Lcom/shawnlin/numberpicker/NumberPicker;->postChangeCurrentByOneFromLongPress(Z)V

    goto :goto_0

    .line 1019
    :cond_a
    iget v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mBottomDividerBottom:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_b

    .line 1020
    invoke-direct {p0, v2}, Lcom/shawnlin/numberpicker/NumberPicker;->postChangeCurrentByOneFromLongPress(Z)V

    :cond_b
    :goto_0
    return v2
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 881
    invoke-virtual {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->getMeasuredWidth()I

    move-result p2

    .line 882
    invoke-virtual {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->getMeasuredHeight()I

    move-result p3

    .line 885
    iget-object p4, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectedText:Landroid/widget/EditText;

    invoke-virtual {p4}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result p4

    .line 886
    iget-object p5, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectedText:Landroid/widget/EditText;

    invoke-virtual {p5}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result p5

    sub-int/2addr p2, p4

    .line 887
    div-int/lit8 p2, p2, 0x2

    sub-int/2addr p3, p5

    .line 888
    div-int/lit8 p3, p3, 0x2

    add-int/2addr p4, p2

    add-int/2addr p5, p3

    .line 891
    iget-object v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectedText:Landroid/widget/EditText;

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/widget/EditText;->layout(IIII)V

    .line 892
    iget-object p2, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectedText:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getX()F

    move-result p2

    iget-object p3, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectedText:Landroid/widget/EditText;

    invoke-virtual {p3}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    int-to-float p3, p3

    add-float/2addr p2, p3

    iput p2, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectedTextCenterX:F

    .line 893
    iget-object p2, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectedText:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getY()F

    move-result p2

    iget-object p3, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectedText:Landroid/widget/EditText;

    invoke-virtual {p3}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    int-to-float p3, p3

    add-float/2addr p2, p3

    iput p2, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectedTextCenterY:F

    if-eqz p1, :cond_1

    .line 897
    invoke-direct {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->initializeSelectorWheel()V

    .line 898
    invoke-direct {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->initializeFadingEdges()V

    .line 900
    iget p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mDividerThickness:I

    mul-int/lit8 p1, p1, 0x2

    iget p2, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mDividerDistance:I

    add-int/2addr p1, p2

    .line 901
    invoke-virtual {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->isHorizontalMode()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 902
    invoke-virtual {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->getWidth()I

    move-result p2

    iget p3, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mDividerDistance:I

    sub-int/2addr p2, p3

    div-int/lit8 p2, p2, 0x2

    iget p3, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mDividerThickness:I

    sub-int/2addr p2, p3

    iput p2, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mLeftDividerLeft:I

    .line 903
    iget p2, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mLeftDividerLeft:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mRightDividerRight:I

    goto :goto_0

    .line 905
    :cond_0
    invoke-virtual {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->getHeight()I

    move-result p2

    iget p3, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mDividerDistance:I

    sub-int/2addr p2, p3

    div-int/lit8 p2, p2, 0x2

    iget p3, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mDividerThickness:I

    sub-int/2addr p2, p3

    iput p2, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mTopDividerTop:I

    .line 906
    iget p2, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mTopDividerTop:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mBottomDividerBottom:I

    :cond_1
    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 914
    iget v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mMaxWidth:I

    invoke-direct {p0, p1, v0}, Lcom/shawnlin/numberpicker/NumberPicker;->makeMeasureSpec(II)I

    move-result v0

    .line 915
    iget v1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mMaxHeight:I

    invoke-direct {p0, p2, v1}, Lcom/shawnlin/numberpicker/NumberPicker;->makeMeasureSpec(II)I

    move-result v1

    .line 916
    invoke-super {p0, v0, v1}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 918
    iget v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mMinWidth:I

    invoke-virtual {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->getMeasuredWidth()I

    move-result v1

    invoke-direct {p0, v0, v1, p1}, Lcom/shawnlin/numberpicker/NumberPicker;->resolveSizeAndStateRespectingMinSize(III)I

    move-result p1

    .line 920
    iget v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mMinHeight:I

    invoke-virtual {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->getMeasuredHeight()I

    move-result v1

    invoke-direct {p0, v0, v1, p2}, Lcom/shawnlin/numberpicker/NumberPicker;->resolveSizeAndStateRespectingMinSize(III)I

    move-result p2

    .line 922
    invoke-virtual {p0, p1, p2}, Lcom/shawnlin/numberpicker/NumberPicker;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1031
    invoke-virtual {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1034
    :cond_0
    invoke-virtual {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->isScrollerEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 1037
    :cond_1
    iget-object v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_2

    .line 1038
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1040
    :cond_2
    iget-object v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1041
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_9

    if-eq v0, v2, :cond_3

    goto/16 :goto_5

    .line 1044
    :cond_3
    invoke-virtual {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->isHorizontalMode()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1045
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    .line 1046
    iget v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mScrollState:I

    if-eq v0, v3, :cond_4

    .line 1047
    iget v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mLastDownEventX:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    .line 1048
    iget v1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mTouchSlop:I

    if-le v0, v1, :cond_5

    .line 1049
    invoke-direct {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->removeAllCallbacks()V

    .line 1050
    invoke-direct {p0, v3}, Lcom/shawnlin/numberpicker/NumberPicker;->onScrollStateChange(I)V

    goto :goto_0

    .line 1053
    :cond_4
    iget v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mLastDownOrMoveEventX:F

    sub-float v0, p1, v0

    float-to-int v0, v0

    .line 1054
    invoke-virtual {p0, v0, v1}, Lcom/shawnlin/numberpicker/NumberPicker;->scrollBy(II)V

    .line 1055
    invoke-virtual {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->invalidate()V

    .line 1057
    :cond_5
    :goto_0
    iput p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mLastDownOrMoveEventX:F

    goto/16 :goto_5

    .line 1059
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 1060
    iget v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mScrollState:I

    if-eq v0, v3, :cond_7

    .line 1061
    iget v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mLastDownEventY:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    .line 1062
    iget v1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mTouchSlop:I

    if-le v0, v1, :cond_8

    .line 1063
    invoke-direct {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->removeAllCallbacks()V

    .line 1064
    invoke-direct {p0, v3}, Lcom/shawnlin/numberpicker/NumberPicker;->onScrollStateChange(I)V

    goto :goto_1

    .line 1067
    :cond_7
    iget v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mLastDownOrMoveEventY:F

    sub-float v0, p1, v0

    float-to-int v0, v0

    .line 1068
    invoke-virtual {p0, v1, v0}, Lcom/shawnlin/numberpicker/NumberPicker;->scrollBy(II)V

    .line 1069
    invoke-virtual {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->invalidate()V

    .line 1071
    :cond_8
    :goto_1
    iput p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mLastDownOrMoveEventY:F

    goto/16 :goto_5

    .line 1076
    :cond_9
    invoke-direct {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->removeChangeCurrentByOneFromLongPress()V

    .line 1077
    iget-object v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v4, 0x3e8

    .line 1078
    iget v5, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mMaximumFlingVelocity:I

    int-to-float v5, v5

    invoke-virtual {v0, v4, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1079
    invoke-virtual {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->isHorizontalMode()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1080
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    float-to-int v0, v0

    .line 1081
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mMinimumFlingVelocity:I

    if-le v4, v5, :cond_a

    .line 1082
    invoke-direct {p0, v0}, Lcom/shawnlin/numberpicker/NumberPicker;->fling(I)V

    .line 1083
    invoke-direct {p0, v2}, Lcom/shawnlin/numberpicker/NumberPicker;->onScrollStateChange(I)V

    goto/16 :goto_4

    .line 1085
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    int-to-float v0, p1

    .line 1086
    iget v2, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mLastDownEventX:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    .line 1087
    iget v2, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mTouchSlop:I

    if-gt v0, v2, :cond_d

    .line 1088
    iget v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectorElementSize:I

    div-int/2addr p1, v0

    iget v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mWheelMiddleItemIndex:I

    sub-int/2addr p1, v0

    if-lez p1, :cond_b

    .line 1091
    invoke-direct {p0, v3}, Lcom/shawnlin/numberpicker/NumberPicker;->changeValueByOne(Z)V

    goto :goto_2

    :cond_b
    if-gez p1, :cond_c

    .line 1093
    invoke-direct {p0, v1}, Lcom/shawnlin/numberpicker/NumberPicker;->changeValueByOne(Z)V

    goto :goto_2

    .line 1095
    :cond_c
    invoke-direct {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->ensureScrollWheelAdjusted()Z

    goto :goto_2

    .line 1098
    :cond_d
    invoke-direct {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->ensureScrollWheelAdjusted()Z

    .line 1100
    :goto_2
    invoke-direct {p0, v1}, Lcom/shawnlin/numberpicker/NumberPicker;->onScrollStateChange(I)V

    goto :goto_4

    .line 1103
    :cond_e
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    float-to-int v0, v0

    .line 1104
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mMinimumFlingVelocity:I

    if-le v4, v5, :cond_f

    .line 1105
    invoke-direct {p0, v0}, Lcom/shawnlin/numberpicker/NumberPicker;->fling(I)V

    .line 1106
    invoke-direct {p0, v2}, Lcom/shawnlin/numberpicker/NumberPicker;->onScrollStateChange(I)V

    goto :goto_4

    .line 1108
    :cond_f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    int-to-float v0, p1

    .line 1109
    iget v2, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mLastDownEventY:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    .line 1110
    iget v2, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mTouchSlop:I

    if-gt v0, v2, :cond_12

    .line 1111
    iget v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectorElementSize:I

    div-int/2addr p1, v0

    iget v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mWheelMiddleItemIndex:I

    sub-int/2addr p1, v0

    if-lez p1, :cond_10

    .line 1114
    invoke-direct {p0, v3}, Lcom/shawnlin/numberpicker/NumberPicker;->changeValueByOne(Z)V

    goto :goto_3

    :cond_10
    if-gez p1, :cond_11

    .line 1116
    invoke-direct {p0, v1}, Lcom/shawnlin/numberpicker/NumberPicker;->changeValueByOne(Z)V

    goto :goto_3

    .line 1118
    :cond_11
    invoke-direct {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->ensureScrollWheelAdjusted()Z

    goto :goto_3

    .line 1121
    :cond_12
    invoke-direct {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->ensureScrollWheelAdjusted()Z

    .line 1123
    :goto_3
    invoke-direct {p0, v1}, Lcom/shawnlin/numberpicker/NumberPicker;->onScrollStateChange(I)V

    .line 1126
    :goto_4
    iget-object p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    .line 1127
    iput-object p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    :goto_5
    return v3
.end method

.method public scrollBy(II)V
    .locals 5

    .line 1236
    invoke-virtual {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->isScrollerEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1239
    :cond_0
    invoke-direct {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->getSelectorIndices()[I

    move-result-object v0

    .line 1240
    iget v1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mCurrentScrollOffset:I

    .line 1242
    invoke-virtual {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->isHorizontalMode()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1243
    invoke-virtual {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->isAscendingOrder()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 1244
    iget-boolean p2, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mWrapSelectorWheel:Z

    if-nez p2, :cond_1

    if-lez p1, :cond_1

    iget p2, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mWheelMiddleItemIndex:I

    aget p2, v0, p2

    iget v2, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mMinValue:I

    if-gt p2, v2, :cond_1

    .line 1246
    iget p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mInitialScrollOffset:I

    iput p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mCurrentScrollOffset:I

    return-void

    .line 1249
    :cond_1
    iget-boolean p2, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mWrapSelectorWheel:Z

    if-nez p2, :cond_4

    if-gez p1, :cond_4

    iget p2, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mWheelMiddleItemIndex:I

    aget p2, v0, p2

    iget v2, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mMaxValue:I

    if-lt p2, v2, :cond_4

    .line 1251
    iget p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mInitialScrollOffset:I

    iput p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mCurrentScrollOffset:I

    return-void

    .line 1255
    :cond_2
    iget-boolean p2, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mWrapSelectorWheel:Z

    if-nez p2, :cond_3

    if-lez p1, :cond_3

    iget p2, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mWheelMiddleItemIndex:I

    aget p2, v0, p2

    iget v2, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mMaxValue:I

    if-lt p2, v2, :cond_3

    .line 1257
    iget p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mInitialScrollOffset:I

    iput p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mCurrentScrollOffset:I

    return-void

    .line 1260
    :cond_3
    iget-boolean p2, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mWrapSelectorWheel:Z

    if-nez p2, :cond_4

    if-gez p1, :cond_4

    iget p2, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mWheelMiddleItemIndex:I

    aget p2, v0, p2

    iget v2, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mMinValue:I

    if-gt p2, v2, :cond_4

    .line 1262
    iget p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mInitialScrollOffset:I

    iput p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mCurrentScrollOffset:I

    return-void

    .line 1267
    :cond_4
    iget p2, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mCurrentScrollOffset:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mCurrentScrollOffset:I

    .line 1268
    iget p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectorTextGapWidth:I

    goto :goto_0

    .line 1270
    :cond_5
    invoke-virtual {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->isAscendingOrder()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1271
    iget-boolean p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mWrapSelectorWheel:Z

    if-nez p1, :cond_6

    if-lez p2, :cond_6

    iget p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mWheelMiddleItemIndex:I

    aget p1, v0, p1

    iget v2, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mMinValue:I

    if-gt p1, v2, :cond_6

    .line 1273
    iget p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mInitialScrollOffset:I

    iput p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mCurrentScrollOffset:I

    return-void

    .line 1276
    :cond_6
    iget-boolean p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mWrapSelectorWheel:Z

    if-nez p1, :cond_9

    if-gez p2, :cond_9

    iget p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mWheelMiddleItemIndex:I

    aget p1, v0, p1

    iget v2, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mMaxValue:I

    if-lt p1, v2, :cond_9

    .line 1278
    iget p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mInitialScrollOffset:I

    iput p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mCurrentScrollOffset:I

    return-void

    .line 1282
    :cond_7
    iget-boolean p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mWrapSelectorWheel:Z

    if-nez p1, :cond_8

    if-lez p2, :cond_8

    iget p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mWheelMiddleItemIndex:I

    aget p1, v0, p1

    iget v2, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mMaxValue:I

    if-lt p1, v2, :cond_8

    .line 1284
    iget p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mInitialScrollOffset:I

    iput p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mCurrentScrollOffset:I

    return-void

    .line 1287
    :cond_8
    iget-boolean p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mWrapSelectorWheel:Z

    if-nez p1, :cond_9

    if-gez p2, :cond_9

    iget p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mWheelMiddleItemIndex:I

    aget p1, v0, p1

    iget v2, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mMinValue:I

    if-gt p1, v2, :cond_9

    .line 1289
    iget p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mInitialScrollOffset:I

    iput p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mCurrentScrollOffset:I

    return-void

    .line 1294
    :cond_9
    iget p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mCurrentScrollOffset:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mCurrentScrollOffset:I

    .line 1295
    iget p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectorTextGapHeight:I

    .line 1298
    :cond_a
    :goto_0
    iget p2, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mInitialScrollOffset:I

    sub-int v2, p2, v2

    const/4 v3, 0x1

    if-le v2, p1, :cond_c

    .line 1299
    iget v2, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectorElementSize:I

    sub-int/2addr p2, v2

    iput p2, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mCurrentScrollOffset:I

    .line 1300
    invoke-virtual {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->isAscendingOrder()Z

    move-result p2

    if-eqz p2, :cond_b

    .line 1301
    invoke-direct {p0, v0}, Lcom/shawnlin/numberpicker/NumberPicker;->decrementSelectorIndices([I)V

    goto :goto_1

    .line 1303
    :cond_b
    invoke-direct {p0, v0}, Lcom/shawnlin/numberpicker/NumberPicker;->incrementSelectorIndices([I)V

    .line 1305
    :goto_1
    iget p2, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mWheelMiddleItemIndex:I

    aget p2, v0, p2

    invoke-direct {p0, p2, v3}, Lcom/shawnlin/numberpicker/NumberPicker;->setValueInternal(IZ)V

    .line 1306
    iget-boolean p2, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mWrapSelectorWheel:Z

    if-nez p2, :cond_a

    iget p2, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mWheelMiddleItemIndex:I

    aget p2, v0, p2

    iget v2, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mMinValue:I

    if-ge p2, v2, :cond_a

    .line 1307
    iget p2, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mInitialScrollOffset:I

    iput p2, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mCurrentScrollOffset:I

    goto :goto_0

    .line 1310
    :cond_c
    :goto_2
    iget p2, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mInitialScrollOffset:I

    sub-int v2, p2, v2

    neg-int v4, p1

    if-ge v2, v4, :cond_e

    .line 1311
    iget v2, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectorElementSize:I

    add-int/2addr p2, v2

    iput p2, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mCurrentScrollOffset:I

    .line 1312
    invoke-virtual {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->isAscendingOrder()Z

    move-result p2

    if-eqz p2, :cond_d

    .line 1313
    invoke-direct {p0, v0}, Lcom/shawnlin/numberpicker/NumberPicker;->incrementSelectorIndices([I)V

    goto :goto_3

    .line 1315
    :cond_d
    invoke-direct {p0, v0}, Lcom/shawnlin/numberpicker/NumberPicker;->decrementSelectorIndices([I)V

    .line 1317
    :goto_3
    iget p2, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mWheelMiddleItemIndex:I

    aget p2, v0, p2

    invoke-direct {p0, p2, v3}, Lcom/shawnlin/numberpicker/NumberPicker;->setValueInternal(IZ)V

    .line 1318
    iget-boolean p2, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mWrapSelectorWheel:Z

    if-nez p2, :cond_c

    iget p2, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mWheelMiddleItemIndex:I

    aget p2, v0, p2

    iget v2, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mMaxValue:I

    if-le p2, v2, :cond_c

    .line 1319
    iget p2, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mInitialScrollOffset:I

    iput p2, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mCurrentScrollOffset:I

    goto :goto_2

    :cond_e
    if-eq v1, p2, :cond_10

    .line 1324
    invoke-virtual {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->isHorizontalMode()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_f

    .line 1325
    iget p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mCurrentScrollOffset:I

    invoke-virtual {p0, p1, p2, v1, p2}, Lcom/shawnlin/numberpicker/NumberPicker;->onScrollChanged(IIII)V

    goto :goto_4

    .line 1327
    :cond_f
    iget p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mCurrentScrollOffset:I

    invoke-virtual {p0, p2, p1, p2, v1}, Lcom/shawnlin/numberpicker/NumberPicker;->onScrollChanged(IIII)V

    :cond_10
    :goto_4
    return-void
.end method

.method public setAccessibilityDescriptionEnabled(Z)V
    .locals 0

    .line 2581
    iput-boolean p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mAccessibilityDescriptionEnabled:Z

    return-void
.end method

.method public setDisplayedValues([Ljava/lang/String;)V
    .locals 1

    .line 1674
    iget-object v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-ne v0, p1, :cond_0

    return-void

    .line 1677
    :cond_0
    iput-object p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    .line 1678
    iget-object p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 1680
    iget-object p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectedText:Landroid/widget/EditText;

    const/high16 v0, 0xa0000

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setRawInputType(I)V

    goto :goto_0

    .line 1683
    :cond_1
    iget-object p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectedText:Landroid/widget/EditText;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 1685
    :goto_0
    invoke-direct {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->updateInputTextView()Z

    .line 1686
    invoke-direct {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1687
    invoke-direct {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->tryComputeMaxWidth()V

    return-void
.end method

.method public setDividerColor(I)V
    .locals 1

    .line 2585
    iput p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mDividerColor:I

    .line 2586
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setDividerColorResource(I)V
    .locals 1

    .line 2590
    iget-object v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/shawnlin/numberpicker/NumberPicker;->setDividerColor(I)V

    return-void
.end method

.method public setDividerDistance(I)V
    .locals 0

    .line 2594
    iput p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mDividerDistance:I

    return-void
.end method

.method public setDividerDistanceResource(I)V
    .locals 1

    .line 2598
    invoke-virtual {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/shawnlin/numberpicker/NumberPicker;->setDividerDistance(I)V

    return-void
.end method

.method public setDividerThickness(I)V
    .locals 0

    .line 2602
    iput p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mDividerThickness:I

    return-void
.end method

.method public setDividerThicknessResource(I)V
    .locals 1

    .line 2606
    invoke-virtual {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/shawnlin/numberpicker/NumberPicker;->setDividerThickness(I)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 1230
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 1231
    iget-object v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectedText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    return-void
.end method

.method public setFadingEdgeEnabled(Z)V
    .locals 0

    .line 2646
    iput-boolean p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mFadingEdgeEnabled:Z

    return-void
.end method

.method public setFadingEdgeStrength(F)V
    .locals 0

    .line 2650
    iput p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mFadingEdgeStrength:F

    return-void
.end method

.method public setFormatter(I)V
    .locals 1

    .line 2642
    invoke-virtual {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/shawnlin/numberpicker/NumberPicker;->setFormatter(Ljava/lang/String;)V

    return-void
.end method

.method public setFormatter(Lcom/shawnlin/numberpicker/NumberPicker$Formatter;)V
    .locals 1

    .line 1419
    iget-object v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mFormatter:Lcom/shawnlin/numberpicker/NumberPicker$Formatter;

    if-ne p1, v0, :cond_0

    return-void

    .line 1422
    :cond_0
    iput-object p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mFormatter:Lcom/shawnlin/numberpicker/NumberPicker$Formatter;

    .line 1423
    invoke-direct {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1424
    invoke-direct {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->updateInputTextView()Z

    return-void
.end method

.method public setFormatter(Ljava/lang/String;)V
    .locals 1

    .line 2634
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2638
    :cond_0
    invoke-direct {p0, p1}, Lcom/shawnlin/numberpicker/NumberPicker;->stringToFormatter(Ljava/lang/String;)Lcom/shawnlin/numberpicker/NumberPicker$Formatter;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/shawnlin/numberpicker/NumberPicker;->setFormatter(Lcom/shawnlin/numberpicker/NumberPicker$Formatter;)V

    return-void
.end method

.method public setLineSpacingMultiplier(F)V
    .locals 0

    .line 2777
    iput p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mLineSpacingMultiplier:F

    return-void
.end method

.method public setMaxFlingVelocityCoefficient(I)V
    .locals 1

    .line 2781
    iput p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mMaxFlingVelocityCoefficient:I

    .line 2782
    iget-object p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mViewConfiguration:Landroid/view/ViewConfiguration;

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p1

    iget v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mMaxFlingVelocityCoefficient:I

    div-int/2addr p1, v0

    iput p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mMaximumFlingVelocity:I

    return-void
.end method

.method public setMaxValue(I)V
    .locals 1

    if-ltz p1, :cond_1

    .line 1643
    iput p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mMaxValue:I

    .line 1644
    iget p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mMaxValue:I

    iget v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mValue:I

    if-ge p1, v0, :cond_0

    .line 1645
    iput p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mValue:I

    .line 1648
    :cond_0
    invoke-direct {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->updateWrapSelectorWheel()V

    .line 1649
    invoke-direct {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1650
    invoke-direct {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->updateInputTextView()Z

    .line 1651
    invoke-direct {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->tryComputeMaxWidth()V

    .line 1652
    invoke-virtual {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->invalidate()V

    return-void

    .line 1641
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "maxValue must be >= 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMinValue(I)V
    .locals 1

    .line 1609
    iput p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mMinValue:I

    .line 1610
    iget p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mMinValue:I

    iget v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mValue:I

    if-le p1, v0, :cond_0

    .line 1611
    iput p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mValue:I

    .line 1613
    :cond_0
    invoke-direct {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->isWrappingAllowed()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/shawnlin/numberpicker/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 1614
    invoke-direct {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1615
    invoke-direct {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->updateInputTextView()Z

    .line 1616
    invoke-direct {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->tryComputeMaxWidth()V

    .line 1617
    invoke-virtual {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->invalidate()V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1386
    iput-object p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOnLongPressUpdateInterval(J)V
    .locals 0

    .line 1574
    iput-wide p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mLongPressUpdateInterval:J

    return-void
.end method

.method public setOnScrollListener(Lcom/shawnlin/numberpicker/NumberPicker$OnScrollListener;)V
    .locals 0

    .line 1404
    iput-object p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mOnScrollListener:Lcom/shawnlin/numberpicker/NumberPicker$OnScrollListener;

    return-void
.end method

.method public setOnValueChangedListener(Lcom/shawnlin/numberpicker/NumberPicker$OnValueChangeListener;)V
    .locals 0

    .line 1395
    iput-object p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mOnValueChangeListener:Lcom/shawnlin/numberpicker/NumberPicker$OnValueChangeListener;

    return-void
.end method

.method public setOrder(I)V
    .locals 0

    .line 2615
    iput p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mOrder:I

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    .line 2619
    iput p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mOrientation:I

    .line 2620
    invoke-direct {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->setWidthAndHeight()V

    return-void
.end method

.method public setScrollerEnabled(Z)V
    .locals 0

    .line 2654
    iput-boolean p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mScrollerEnabled:Z

    return-void
.end method

.method public setSelectedTextAlign(I)V
    .locals 0

    .line 2658
    iput p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectedTextAlign:I

    return-void
.end method

.method public setSelectedTextColor(I)V
    .locals 1

    .line 2662
    iput p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectedTextColor:I

    .line 2663
    iget-object p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectedText:Landroid/widget/EditText;

    iget v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectedTextColor:I

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTextColor(I)V

    return-void
.end method

.method public setSelectedTextColorResource(I)V
    .locals 1

    .line 2667
    iget-object v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/shawnlin/numberpicker/NumberPicker;->setSelectedTextColor(I)V

    return-void
.end method

.method public setSelectedTextSize(F)V
    .locals 1

    .line 2671
    iput p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectedTextSize:F

    .line 2672
    iget-object p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectedText:Landroid/widget/EditText;

    iget v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectedTextSize:F

    invoke-direct {p0, v0}, Lcom/shawnlin/numberpicker/NumberPicker;->pxToSp(F)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTextSize(F)V

    return-void
.end method

.method public setSelectedTextSize(I)V
    .locals 1

    .line 2676
    invoke-virtual {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/shawnlin/numberpicker/NumberPicker;->setSelectedTextSize(F)V

    return-void
.end method

.method public setSelectedTextStrikeThru(Z)V
    .locals 0

    .line 2680
    iput-boolean p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectedTextStrikeThru:Z

    return-void
.end method

.method public setSelectedTextUnderline(Z)V
    .locals 0

    .line 2684
    iput-boolean p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectedTextUnderline:Z

    return-void
.end method

.method public setSelectedTypeface(I)V
    .locals 1

    const/4 v0, 0x0

    .line 2714
    invoke-virtual {p0, p1, v0}, Lcom/shawnlin/numberpicker/NumberPicker;->setSelectedTypeface(II)V

    return-void
.end method

.method public setSelectedTypeface(II)V
    .locals 1

    .line 2710
    invoke-virtual {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/shawnlin/numberpicker/NumberPicker;->setSelectedTypeface(Ljava/lang/String;I)V

    return-void
.end method

.method public setSelectedTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    .line 2688
    iput-object p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectedTypeface:Landroid/graphics/Typeface;

    .line 2689
    iget-object p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectedTypeface:Landroid/graphics/Typeface;

    if-eqz p1, :cond_0

    .line 2690
    iget-object v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_0

    .line 2691
    :cond_0
    iget-object p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mTypeface:Landroid/graphics/Typeface;

    if-eqz p1, :cond_1

    .line 2692
    iget-object v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_0

    .line 2694
    :cond_1
    iget-object p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :goto_0
    return-void
.end method

.method public setSelectedTypeface(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 2706
    invoke-virtual {p0, p1, v0}, Lcom/shawnlin/numberpicker/NumberPicker;->setSelectedTypeface(Ljava/lang/String;I)V

    return-void
.end method

.method public setSelectedTypeface(Ljava/lang/String;I)V
    .locals 1

    .line 2699
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2702
    :cond_0
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/shawnlin/numberpicker/NumberPicker;->setSelectedTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public setTextAlign(I)V
    .locals 0

    .line 2718
    iput p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mTextAlign:I

    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    .line 2722
    iput p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mTextColor:I

    .line 2723
    iget-object p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mTextColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setTextColorResource(I)V
    .locals 1

    .line 2727
    iget-object v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/shawnlin/numberpicker/NumberPicker;->setTextColor(I)V

    return-void
.end method

.method public setTextSize(F)V
    .locals 1

    .line 2731
    iput p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mTextSize:F

    .line 2732
    iget-object p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mTextSize:F

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method

.method public setTextSize(I)V
    .locals 1

    .line 2736
    invoke-virtual {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/shawnlin/numberpicker/NumberPicker;->setTextSize(F)V

    return-void
.end method

.method public setTextStrikeThru(Z)V
    .locals 0

    .line 2740
    iput-boolean p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mTextStrikeThru:Z

    return-void
.end method

.method public setTextUnderline(Z)V
    .locals 0

    .line 2744
    iput-boolean p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mTextUnderline:Z

    return-void
.end method

.method public setTypeface(I)V
    .locals 1

    const/4 v0, 0x0

    .line 2773
    invoke-virtual {p0, p1, v0}, Lcom/shawnlin/numberpicker/NumberPicker;->setTypeface(II)V

    return-void
.end method

.method public setTypeface(II)V
    .locals 1

    .line 2769
    invoke-virtual {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/shawnlin/numberpicker/NumberPicker;->setTypeface(Ljava/lang/String;I)V

    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    .line 2748
    iput-object p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mTypeface:Landroid/graphics/Typeface;

    .line 2749
    iget-object p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mTypeface:Landroid/graphics/Typeface;

    if-eqz p1, :cond_0

    .line 2750
    iget-object v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectedText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2751
    iget-object p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectedTypeface:Landroid/graphics/Typeface;

    invoke-virtual {p0, p1}, Lcom/shawnlin/numberpicker/NumberPicker;->setSelectedTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    .line 2753
    :cond_0
    iget-object p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectedText:Landroid/widget/EditText;

    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    :goto_0
    return-void
.end method

.method public setTypeface(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 2765
    invoke-virtual {p0, p1, v0}, Lcom/shawnlin/numberpicker/NumberPicker;->setTypeface(Ljava/lang/String;I)V

    return-void
.end method

.method public setTypeface(Ljava/lang/String;I)V
    .locals 1

    .line 2758
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2761
    :cond_0
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/shawnlin/numberpicker/NumberPicker;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public setValue(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1456
    invoke-direct {p0, p1, v0}, Lcom/shawnlin/numberpicker/NumberPicker;->setValueInternal(IZ)V

    return-void
.end method

.method public setWheelItemCount(I)V
    .locals 1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    .line 2627
    iput p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mRealWheelItemCount:I

    const/4 v0, 0x3

    if-ge p1, v0, :cond_0

    move p1, v0

    .line 2628
    :cond_0
    iput p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mWheelItemCount:I

    .line 2629
    iget p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mWheelItemCount:I

    div-int/lit8 v0, p1, 0x2

    iput v0, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mWheelMiddleItemIndex:I

    .line 2630
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectorIndices:[I

    return-void

    .line 2625
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wheel item count must be >= 1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setWrapSelectorWheel(Z)V
    .locals 0

    .line 1544
    iput-boolean p1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mWrapSelectorWheelPreferred:Z

    .line 1545
    invoke-direct {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->updateWrapSelectorWheel()V

    return-void
.end method

.method public smoothScroll(ZI)V
    .locals 15

    move-object v0, p0

    .line 2049
    invoke-virtual {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->isHorizontalMode()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 2050
    iput v2, v0, Lcom/shawnlin/numberpicker/NumberPicker;->mPreviousScrollerX:I

    if-eqz p1, :cond_0

    .line 2052
    iget-object v3, v0, Lcom/shawnlin/numberpicker/NumberPicker;->mFlingScroller:Lcom/shawnlin/numberpicker/Scroller;

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v1, v0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectorElementSize:I

    neg-int v1, v1

    mul-int v6, v1, p2

    const/4 v7, 0x0

    const/16 v8, 0x12c

    invoke-virtual/range {v3 .. v8}, Lcom/shawnlin/numberpicker/Scroller;->startScroll(IIIII)V

    goto :goto_0

    .line 2054
    :cond_0
    iget-object v9, v0, Lcom/shawnlin/numberpicker/NumberPicker;->mFlingScroller:Lcom/shawnlin/numberpicker/Scroller;

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget v1, v0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectorElementSize:I

    mul-int v12, v1, p2

    const/4 v13, 0x0

    const/16 v14, 0x12c

    invoke-virtual/range {v9 .. v14}, Lcom/shawnlin/numberpicker/Scroller;->startScroll(IIIII)V

    goto :goto_0

    .line 2057
    :cond_1
    iput v2, v0, Lcom/shawnlin/numberpicker/NumberPicker;->mPreviousScrollerY:I

    if-eqz p1, :cond_2

    .line 2059
    iget-object v1, v0, Lcom/shawnlin/numberpicker/NumberPicker;->mFlingScroller:Lcom/shawnlin/numberpicker/Scroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, v0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectorElementSize:I

    neg-int v5, v5

    mul-int v5, v5, p2

    const/16 v6, 0x12c

    invoke-virtual/range {v1 .. v6}, Lcom/shawnlin/numberpicker/Scroller;->startScroll(IIIII)V

    goto :goto_0

    .line 2061
    :cond_2
    iget-object v7, v0, Lcom/shawnlin/numberpicker/NumberPicker;->mFlingScroller:Lcom/shawnlin/numberpicker/Scroller;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v1, v0, Lcom/shawnlin/numberpicker/NumberPicker;->mSelectorElementSize:I

    mul-int v11, v1, p2

    const/16 v12, 0x12c

    invoke-virtual/range {v7 .. v12}, Lcom/shawnlin/numberpicker/Scroller;->startScroll(IIIII)V

    .line 2064
    :goto_0
    invoke-virtual {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->invalidate()V

    return-void
.end method

.method public smoothScrollToPosition(I)V
    .locals 2

    .line 2035
    invoke-direct {p0}, Lcom/shawnlin/numberpicker/NumberPicker;->getSelectorIndices()[I

    move-result-object v0

    iget v1, p0, Lcom/shawnlin/numberpicker/NumberPicker;->mWheelMiddleItemIndex:I

    aget v0, v0, v1

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-le p1, v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    sub-int/2addr p1, v0

    .line 2039
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-virtual {p0, v1, p1}, Lcom/shawnlin/numberpicker/NumberPicker;->smoothScroll(ZI)V

    return-void
.end method
