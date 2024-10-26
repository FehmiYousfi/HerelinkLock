.class public abstract enum Lnet/bytebuddy/build/EntryPoint$Default;
.super Ljava/lang/Enum;
.source "EntryPoint.java"

# interfaces
.implements Lnet/bytebuddy/build/EntryPoint;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/build/EntryPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "Default"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/build/EntryPoint$Default;",
        ">;",
        "Lnet/bytebuddy/build/EntryPoint;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/build/EntryPoint$Default;

.field public static final enum REBASE:Lnet/bytebuddy/build/EntryPoint$Default;

.field public static final enum REDEFINE:Lnet/bytebuddy/build/EntryPoint$Default;

.field public static final enum REDEFINE_LOCAL:Lnet/bytebuddy/build/EntryPoint$Default;


# instance fields
.field private final byteBuddy:Lnet/bytebuddy/ByteBuddy;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 49
    new-instance v0, Lnet/bytebuddy/build/EntryPoint$Default$1;

    new-instance v1, Lnet/bytebuddy/ByteBuddy;

    invoke-direct {v1}, Lnet/bytebuddy/ByteBuddy;-><init>()V

    const/4 v2, 0x0

    const-string v3, "REBASE"

    invoke-direct {v0, v3, v2, v1}, Lnet/bytebuddy/build/EntryPoint$Default$1;-><init>(Ljava/lang/String;ILnet/bytebuddy/ByteBuddy;)V

    sput-object v0, Lnet/bytebuddy/build/EntryPoint$Default;->REBASE:Lnet/bytebuddy/build/EntryPoint$Default;

    .line 62
    new-instance v0, Lnet/bytebuddy/build/EntryPoint$Default$2;

    new-instance v1, Lnet/bytebuddy/ByteBuddy;

    invoke-direct {v1}, Lnet/bytebuddy/ByteBuddy;-><init>()V

    const/4 v3, 0x1

    const-string v4, "REDEFINE"

    invoke-direct {v0, v4, v3, v1}, Lnet/bytebuddy/build/EntryPoint$Default$2;-><init>(Ljava/lang/String;ILnet/bytebuddy/ByteBuddy;)V

    sput-object v0, Lnet/bytebuddy/build/EntryPoint$Default;->REDEFINE:Lnet/bytebuddy/build/EntryPoint$Default;

    .line 76
    new-instance v0, Lnet/bytebuddy/build/EntryPoint$Default$3;

    new-instance v1, Lnet/bytebuddy/ByteBuddy;

    invoke-direct {v1}, Lnet/bytebuddy/ByteBuddy;-><init>()V

    sget-object v4, Lnet/bytebuddy/implementation/Implementation$Context$Disabled$Factory;->INSTANCE:Lnet/bytebuddy/implementation/Implementation$Context$Disabled$Factory;

    invoke-virtual {v1, v4}, Lnet/bytebuddy/ByteBuddy;->with(Lnet/bytebuddy/implementation/Implementation$Context$Factory;)Lnet/bytebuddy/ByteBuddy;

    move-result-object v1

    const/4 v4, 0x2

    const-string v5, "REDEFINE_LOCAL"

    invoke-direct {v0, v5, v4, v1}, Lnet/bytebuddy/build/EntryPoint$Default$3;-><init>(Ljava/lang/String;ILnet/bytebuddy/ByteBuddy;)V

    sput-object v0, Lnet/bytebuddy/build/EntryPoint$Default;->REDEFINE_LOCAL:Lnet/bytebuddy/build/EntryPoint$Default;

    const/4 v0, 0x3

    new-array v0, v0, [Lnet/bytebuddy/build/EntryPoint$Default;

    .line 43
    sget-object v1, Lnet/bytebuddy/build/EntryPoint$Default;->REBASE:Lnet/bytebuddy/build/EntryPoint$Default;

    aput-object v1, v0, v2

    sget-object v1, Lnet/bytebuddy/build/EntryPoint$Default;->REDEFINE:Lnet/bytebuddy/build/EntryPoint$Default;

    aput-object v1, v0, v3

    sget-object v1, Lnet/bytebuddy/build/EntryPoint$Default;->REDEFINE_LOCAL:Lnet/bytebuddy/build/EntryPoint$Default;

    aput-object v1, v0, v4

    sput-object v0, Lnet/bytebuddy/build/EntryPoint$Default;->$VALUES:[Lnet/bytebuddy/build/EntryPoint$Default;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILnet/bytebuddy/ByteBuddy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/ByteBuddy;",
            ")V"
        }
    .end annotation

    .line 96
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 97
    iput-object p3, p0, Lnet/bytebuddy/build/EntryPoint$Default;->byteBuddy:Lnet/bytebuddy/ByteBuddy;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILnet/bytebuddy/ByteBuddy;Lnet/bytebuddy/build/EntryPoint$1;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3}, Lnet/bytebuddy/build/EntryPoint$Default;-><init>(Ljava/lang/String;ILnet/bytebuddy/ByteBuddy;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/build/EntryPoint$Default;
    .locals 1

    .line 43
    const-class v0, Lnet/bytebuddy/build/EntryPoint$Default;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/build/EntryPoint$Default;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/build/EntryPoint$Default;
    .locals 1

    .line 43
    sget-object v0, Lnet/bytebuddy/build/EntryPoint$Default;->$VALUES:[Lnet/bytebuddy/build/EntryPoint$Default;

    invoke-virtual {v0}, [Lnet/bytebuddy/build/EntryPoint$Default;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/build/EntryPoint$Default;

    return-object v0
.end method


# virtual methods
.method public getByteBuddy()Lnet/bytebuddy/ByteBuddy;
    .locals 1

    .line 102
    iget-object v0, p0, Lnet/bytebuddy/build/EntryPoint$Default;->byteBuddy:Lnet/bytebuddy/ByteBuddy;

    return-object v0
.end method
