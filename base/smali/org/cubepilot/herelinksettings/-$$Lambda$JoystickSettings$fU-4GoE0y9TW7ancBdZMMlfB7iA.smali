.class public final synthetic Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$fU-4GoE0y9TW7ancBdZMMlfB7iA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field public static final synthetic INSTANCE:Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$fU-4GoE0y9TW7ancBdZMMlfB7iA;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$fU-4GoE0y9TW7ancBdZMMlfB7iA;

    invoke-direct {v0}, Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$fU-4GoE0y9TW7ancBdZMMlfB7iA;-><init>()V

    sput-object v0, Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$fU-4GoE0y9TW7ancBdZMMlfB7iA;->INSTANCE:Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$fU-4GoE0y9TW7ancBdZMMlfB7iA;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p1, p2}, Lorg/cubepilot/herelinksettings/JoystickSettings;->lambda$initViews$29(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
