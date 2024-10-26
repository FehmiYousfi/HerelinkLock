.class Lnet/bytebuddy/asm/Advice$NoExceptionHandler;
.super Ljava/lang/Throwable;
.source "Advice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NoExceptionHandler"
.end annotation


# static fields
.field private static final DESCRIPTION:Lnet/bytebuddy/description/type/TypeDescription;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 8295
    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    const-class v1, Lnet/bytebuddy/asm/Advice$NoExceptionHandler;

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lnet/bytebuddy/asm/Advice$NoExceptionHandler;->DESCRIPTION:Lnet/bytebuddy/description/type/TypeDescription;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 8300
    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    .line 8301
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This marker class is not supposed to be instantiated"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$1500()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 1

    .line 8290
    sget-object v0, Lnet/bytebuddy/asm/Advice$NoExceptionHandler;->DESCRIPTION:Lnet/bytebuddy/description/type/TypeDescription;

    return-object v0
.end method
