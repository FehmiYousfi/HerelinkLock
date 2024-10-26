.class Lorg/mockito/internal/junit/ExceptionFactory$JUnitArgsAreDifferent;
.super Ljava/lang/Object;
.source "ExceptionFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mockito/internal/junit/ExceptionFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JUnitArgsAreDifferent"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/AssertionError;
    .locals 1

    .line 49
    new-instance v0, Lorg/mockito/exceptions/verification/junit/ArgumentsAreDifferent;

    invoke-direct {v0, p0, p1, p2}, Lorg/mockito/exceptions/verification/junit/ArgumentsAreDifferent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
