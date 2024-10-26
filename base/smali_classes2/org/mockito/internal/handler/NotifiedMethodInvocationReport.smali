.class public Lorg/mockito/internal/handler/NotifiedMethodInvocationReport;
.super Ljava/lang/Object;
.source "NotifiedMethodInvocationReport.java"

# interfaces
.implements Lorg/mockito/listeners/MethodInvocationReport;


# instance fields
.field private final invocation:Lorg/mockito/invocation/Invocation;

.field private final returnedValue:Ljava/lang/Object;

.field private final throwable:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lorg/mockito/invocation/Invocation;Ljava/lang/Object;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lorg/mockito/internal/handler/NotifiedMethodInvocationReport;->invocation:Lorg/mockito/invocation/Invocation;

    .line 31
    iput-object p2, p0, Lorg/mockito/internal/handler/NotifiedMethodInvocationReport;->returnedValue:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 32
    iput-object p1, p0, Lorg/mockito/internal/handler/NotifiedMethodInvocationReport;->throwable:Ljava/lang/Throwable;

    return-void
.end method

.method public constructor <init>(Lorg/mockito/invocation/Invocation;Ljava/lang/Throwable;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lorg/mockito/internal/handler/NotifiedMethodInvocationReport;->invocation:Lorg/mockito/invocation/Invocation;

    const/4 p1, 0x0

    .line 44
    iput-object p1, p0, Lorg/mockito/internal/handler/NotifiedMethodInvocationReport;->returnedValue:Ljava/lang/Object;

    .line 45
    iput-object p2, p0, Lorg/mockito/internal/handler/NotifiedMethodInvocationReport;->throwable:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 71
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 73
    :cond_1
    check-cast p1, Lorg/mockito/internal/handler/NotifiedMethodInvocationReport;

    .line 75
    iget-object v2, p0, Lorg/mockito/internal/handler/NotifiedMethodInvocationReport;->invocation:Lorg/mockito/invocation/Invocation;

    iget-object v3, p1, Lorg/mockito/internal/handler/NotifiedMethodInvocationReport;->invocation:Lorg/mockito/invocation/Invocation;

    invoke-static {v2, v3}, Lorg/mockito/internal/matchers/Equality;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/mockito/internal/handler/NotifiedMethodInvocationReport;->returnedValue:Ljava/lang/Object;

    iget-object v3, p1, Lorg/mockito/internal/handler/NotifiedMethodInvocationReport;->returnedValue:Ljava/lang/Object;

    invoke-static {v2, v3}, Lorg/mockito/internal/matchers/Equality;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/mockito/internal/handler/NotifiedMethodInvocationReport;->throwable:Ljava/lang/Throwable;

    iget-object p1, p1, Lorg/mockito/internal/handler/NotifiedMethodInvocationReport;->throwable:Ljava/lang/Throwable;

    invoke-static {v2, p1}, Lorg/mockito/internal/matchers/Equality;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getInvocation()Lorg/mockito/invocation/DescribedInvocation;
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/mockito/internal/handler/NotifiedMethodInvocationReport;->invocation:Lorg/mockito/invocation/Invocation;

    return-object v0
.end method

.method public getLocationOfStubbing()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/mockito/internal/handler/NotifiedMethodInvocationReport;->invocation:Lorg/mockito/invocation/Invocation;

    invoke-interface {v0}, Lorg/mockito/invocation/Invocation;->stubInfo()Lorg/mockito/invocation/StubInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/mockito/internal/handler/NotifiedMethodInvocationReport;->invocation:Lorg/mockito/invocation/Invocation;

    invoke-interface {v0}, Lorg/mockito/invocation/Invocation;->stubInfo()Lorg/mockito/invocation/StubInfo;

    move-result-object v0

    invoke-interface {v0}, Lorg/mockito/invocation/StubInfo;->stubbedAt()Lorg/mockito/invocation/Location;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getReturnedValue()Ljava/lang/Object;
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/mockito/internal/handler/NotifiedMethodInvocationReport;->returnedValue:Ljava/lang/Object;

    return-object v0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 1

    .line 57
    iget-object v0, p0, Lorg/mockito/internal/handler/NotifiedMethodInvocationReport;->throwable:Ljava/lang/Throwable;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 81
    iget-object v0, p0, Lorg/mockito/internal/handler/NotifiedMethodInvocationReport;->invocation:Lorg/mockito/invocation/Invocation;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 82
    iget-object v2, p0, Lorg/mockito/internal/handler/NotifiedMethodInvocationReport;->returnedValue:Ljava/lang/Object;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 83
    iget-object v2, p0, Lorg/mockito/internal/handler/NotifiedMethodInvocationReport;->throwable:Ljava/lang/Throwable;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public threwException()Z
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/mockito/internal/handler/NotifiedMethodInvocationReport;->throwable:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
