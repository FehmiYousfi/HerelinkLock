.class public final synthetic Lorg/cubepilot/herelinksettings/-$$Lambda$ButtonSettings$C8ybxh-uCYp7ljKALmLQxw7ZKA4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/UnaryOperator;


# static fields
.field public static final synthetic INSTANCE:Lorg/cubepilot/herelinksettings/-$$Lambda$ButtonSettings$C8ybxh-uCYp7ljKALmLQxw7ZKA4;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/cubepilot/herelinksettings/-$$Lambda$ButtonSettings$C8ybxh-uCYp7ljKALmLQxw7ZKA4;

    invoke-direct {v0}, Lorg/cubepilot/herelinksettings/-$$Lambda$ButtonSettings$C8ybxh-uCYp7ljKALmLQxw7ZKA4;-><init>()V

    sput-object v0, Lorg/cubepilot/herelinksettings/-$$Lambda$ButtonSettings$C8ybxh-uCYp7ljKALmLQxw7ZKA4;->INSTANCE:Lorg/cubepilot/herelinksettings/-$$Lambda$ButtonSettings$C8ybxh-uCYp7ljKALmLQxw7ZKA4;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lorg/cubepilot/herelinksettings/ButtonSettings;->lambda$loadSettings$4(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
