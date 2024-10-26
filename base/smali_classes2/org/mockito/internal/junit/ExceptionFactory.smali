.class public Lorg/mockito/internal/junit/ExceptionFactory;
.super Ljava/lang/Object;
.source "ExceptionFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mockito/internal/junit/ExceptionFactory$JUnitArgsAreDifferent;
    }
.end annotation


# static fields
.field private static final hasJUnit:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    invoke-static {}, Lorg/mockito/internal/junit/ExceptionFactory;->canLoadJunitClass()Z

    move-result v0

    sput-boolean v0, Lorg/mockito/internal/junit/ExceptionFactory;->hasJUnit:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static canLoadJunitClass()Z
    .locals 3

    :try_start_0
    const-string v0, "message"

    const-string v1, "wanted"

    const-string v2, "actual"

    .line 33
    invoke-static {v0, v1, v2}, Lorg/mockito/internal/junit/ExceptionFactory$JUnitArgsAreDifferent;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/AssertionError;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public static createArgumentsAreDifferentException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/AssertionError;
    .locals 1

    .line 21
    sget-boolean v0, Lorg/mockito/internal/junit/ExceptionFactory;->hasJUnit:Z

    if-eqz v0, :cond_0

    .line 22
    invoke-static {p0, p1, p2}, Lorg/mockito/internal/junit/ExceptionFactory;->createJUnitArgumentsAreDifferent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/AssertionError;

    move-result-object p0

    return-object p0

    .line 24
    :cond_0
    new-instance p1, Lorg/mockito/exceptions/verification/ArgumentsAreDifferent;

    invoke-direct {p1, p0}, Lorg/mockito/exceptions/verification/ArgumentsAreDifferent;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method private static createJUnitArgumentsAreDifferent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/AssertionError;
    .locals 0

    .line 28
    invoke-static {p0, p1, p2}, Lorg/mockito/internal/junit/ExceptionFactory$JUnitArgsAreDifferent;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/AssertionError;

    move-result-object p0

    return-object p0
.end method
