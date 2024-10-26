.class public final synthetic Lorg/cubepilot/herelinksettings/-$$Lambda$ButtonSettings$fxbNLF0TPodf6RT-xrLNz0R1ar4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lorg/cubepilot/herelinksettings/-$$Lambda$ButtonSettings$fxbNLF0TPodf6RT-xrLNz0R1ar4;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/cubepilot/herelinksettings/-$$Lambda$ButtonSettings$fxbNLF0TPodf6RT-xrLNz0R1ar4;

    invoke-direct {v0}, Lorg/cubepilot/herelinksettings/-$$Lambda$ButtonSettings$fxbNLF0TPodf6RT-xrLNz0R1ar4;-><init>()V

    sput-object v0, Lorg/cubepilot/herelinksettings/-$$Lambda$ButtonSettings$fxbNLF0TPodf6RT-xrLNz0R1ar4;->INSTANCE:Lorg/cubepilot/herelinksettings/-$$Lambda$ButtonSettings$fxbNLF0TPodf6RT-xrLNz0R1ar4;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lorg/cubepilot/herelinksettings/ButtonSettings;->lambda$loadSettings$3(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
