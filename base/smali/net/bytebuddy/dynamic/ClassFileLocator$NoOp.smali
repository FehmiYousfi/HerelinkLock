.class public final enum Lnet/bytebuddy/dynamic/ClassFileLocator$NoOp;
.super Ljava/lang/Enum;
.source "ClassFileLocator.java"

# interfaces
.implements Lnet/bytebuddy/dynamic/ClassFileLocator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/ClassFileLocator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NoOp"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/dynamic/ClassFileLocator$NoOp;",
        ">;",
        "Lnet/bytebuddy/dynamic/ClassFileLocator;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/dynamic/ClassFileLocator$NoOp;

.field public static final enum INSTANCE:Lnet/bytebuddy/dynamic/ClassFileLocator$NoOp;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 140
    new-instance v0, Lnet/bytebuddy/dynamic/ClassFileLocator$NoOp;

    const/4 v1, 0x0

    const-string v2, "INSTANCE"

    invoke-direct {v0, v2, v1}, Lnet/bytebuddy/dynamic/ClassFileLocator$NoOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/dynamic/ClassFileLocator$NoOp;->INSTANCE:Lnet/bytebuddy/dynamic/ClassFileLocator$NoOp;

    const/4 v0, 0x1

    new-array v0, v0, [Lnet/bytebuddy/dynamic/ClassFileLocator$NoOp;

    .line 135
    sget-object v2, Lnet/bytebuddy/dynamic/ClassFileLocator$NoOp;->INSTANCE:Lnet/bytebuddy/dynamic/ClassFileLocator$NoOp;

    aput-object v2, v0, v1

    sput-object v0, Lnet/bytebuddy/dynamic/ClassFileLocator$NoOp;->$VALUES:[Lnet/bytebuddy/dynamic/ClassFileLocator$NoOp;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 135
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/dynamic/ClassFileLocator$NoOp;
    .locals 1

    .line 135
    const-class v0, Lnet/bytebuddy/dynamic/ClassFileLocator$NoOp;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/dynamic/ClassFileLocator$NoOp;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/dynamic/ClassFileLocator$NoOp;
    .locals 1

    .line 135
    sget-object v0, Lnet/bytebuddy/dynamic/ClassFileLocator$NoOp;->$VALUES:[Lnet/bytebuddy/dynamic/ClassFileLocator$NoOp;

    invoke-virtual {v0}, [Lnet/bytebuddy/dynamic/ClassFileLocator$NoOp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/dynamic/ClassFileLocator$NoOp;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public locate(Ljava/lang/String;)Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution;
    .locals 1

    .line 144
    new-instance v0, Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution$Illegal;

    invoke-direct {v0, p1}, Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution$Illegal;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
