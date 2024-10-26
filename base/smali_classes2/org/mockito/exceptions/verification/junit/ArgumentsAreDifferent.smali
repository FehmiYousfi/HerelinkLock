.class public Lorg/mockito/exceptions/verification/junit/ArgumentsAreDifferent;
.super Ljunit/framework/ComparisonFailure;
.source "ArgumentsAreDifferent.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final message:Ljava/lang/String;

.field private final unfilteredStackTrace:[Ljava/lang/StackTraceElement;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3}, Ljunit/framework/ComparisonFailure;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iput-object p1, p0, Lorg/mockito/exceptions/verification/junit/ArgumentsAreDifferent;->message:Ljava/lang/String;

    .line 24
    invoke-virtual {p0}, Lorg/mockito/exceptions/verification/junit/ArgumentsAreDifferent;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    iput-object p1, p0, Lorg/mockito/exceptions/verification/junit/ArgumentsAreDifferent;->unfilteredStackTrace:[Ljava/lang/StackTraceElement;

    .line 25
    new-instance p1, Lorg/mockito/internal/exceptions/stacktrace/ConditionalStackTraceFilter;

    invoke-direct {p1}, Lorg/mockito/internal/exceptions/stacktrace/ConditionalStackTraceFilter;-><init>()V

    .line 26
    invoke-virtual {p1, p0}, Lorg/mockito/internal/exceptions/stacktrace/ConditionalStackTraceFilter;->filter(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lorg/mockito/exceptions/verification/junit/ArgumentsAreDifferent;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getUnfilteredStackTrace()[Ljava/lang/StackTraceElement;
    .locals 1

    .line 35
    iget-object v0, p0, Lorg/mockito/exceptions/verification/junit/ArgumentsAreDifferent;->unfilteredStackTrace:[Ljava/lang/StackTraceElement;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 40
    invoke-super {p0}, Ljunit/framework/ComparisonFailure;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mockito/internal/util/StringUtil;->removeFirstLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
