.class public Lorg/mockito/internal/invocation/InvocationImpl;
.super Ljava/lang/Object;
.source "InvocationImpl.java"

# interfaces
.implements Lorg/mockito/invocation/Invocation;
.implements Lorg/mockito/internal/exceptions/VerificationAwareInvocation;


# static fields
.field private static final serialVersionUID:J = 0x725a9baddc092d67L


# instance fields
.field private final arguments:[Ljava/lang/Object;

.field private isIgnoredForVerification:Z

.field private final location:Lorg/mockito/invocation/Location;

.field private final method:Lorg/mockito/internal/invocation/MockitoMethod;

.field private final mock:Ljava/lang/Object;

.field private final rawArguments:[Ljava/lang/Object;

.field final realMethod:Lorg/mockito/internal/invocation/realmethod/RealMethod;

.field private final sequenceNumber:I

.field private stubInfo:Lorg/mockito/invocation/StubInfo;

.field private verified:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lorg/mockito/internal/invocation/MockitoMethod;[Ljava/lang/Object;ILorg/mockito/internal/invocation/realmethod/RealMethod;Lorg/mockito/invocation/Location;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p2, p0, Lorg/mockito/internal/invocation/InvocationImpl;->method:Lorg/mockito/internal/invocation/MockitoMethod;

    .line 46
    iput-object p1, p0, Lorg/mockito/internal/invocation/InvocationImpl;->mock:Ljava/lang/Object;

    .line 47
    iput-object p5, p0, Lorg/mockito/internal/invocation/InvocationImpl;->realMethod:Lorg/mockito/internal/invocation/realmethod/RealMethod;

    .line 48
    invoke-interface {p2}, Lorg/mockito/internal/invocation/MockitoMethod;->isVarArgs()Z

    move-result p1

    invoke-static {p1, p3}, Lorg/mockito/internal/invocation/ArgumentsProcessor;->expandVarArgs(Z[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/mockito/internal/invocation/InvocationImpl;->arguments:[Ljava/lang/Object;

    .line 49
    iput-object p3, p0, Lorg/mockito/internal/invocation/InvocationImpl;->rawArguments:[Ljava/lang/Object;

    .line 50
    iput p4, p0, Lorg/mockito/internal/invocation/InvocationImpl;->sequenceNumber:I

    .line 51
    iput-object p6, p0, Lorg/mockito/internal/invocation/InvocationImpl;->location:Lorg/mockito/invocation/Location;

    return-void
.end method

.method private equalArguments([Ljava/lang/Object;)Z
    .locals 1

    .line 89
    iget-object v0, p0, Lorg/mockito/internal/invocation/InvocationImpl;->arguments:[Ljava/lang/Object;

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public callRealMethod()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lorg/mockito/internal/invocation/InvocationImpl;->method:Lorg/mockito/internal/invocation/MockitoMethod;

    invoke-interface {v0}, Lorg/mockito/internal/invocation/MockitoMethod;->isAbstract()Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    iget-object v0, p0, Lorg/mockito/internal/invocation/InvocationImpl;->realMethod:Lorg/mockito/internal/invocation/realmethod/RealMethod;

    iget-object v1, p0, Lorg/mockito/internal/invocation/InvocationImpl;->mock:Ljava/lang/Object;

    iget-object v2, p0, Lorg/mockito/internal/invocation/InvocationImpl;->rawArguments:[Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/mockito/internal/invocation/realmethod/RealMethod;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 115
    :cond_0
    invoke-static {}, Lorg/mockito/internal/exceptions/Reporter;->cannotCallAbstractRealMethod()Lorg/mockito/exceptions/base/MockitoException;

    move-result-object v0

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 79
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 83
    :cond_0
    check-cast p1, Lorg/mockito/internal/invocation/InvocationImpl;

    .line 85
    iget-object v1, p0, Lorg/mockito/internal/invocation/InvocationImpl;->mock:Ljava/lang/Object;

    iget-object v2, p1, Lorg/mockito/internal/invocation/InvocationImpl;->mock:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/mockito/internal/invocation/InvocationImpl;->method:Lorg/mockito/internal/invocation/MockitoMethod;

    iget-object v2, p1, Lorg/mockito/internal/invocation/InvocationImpl;->method:Lorg/mockito/internal/invocation/MockitoMethod;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p1, p1, Lorg/mockito/internal/invocation/InvocationImpl;->arguments:[Ljava/lang/Object;

    invoke-direct {p0, p1}, Lorg/mockito/internal/invocation/InvocationImpl;->equalArguments([Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public getArgument(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)TT;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lorg/mockito/internal/invocation/InvocationImpl;->arguments:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getArguments()[Ljava/lang/Object;
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/mockito/internal/invocation/InvocationImpl;->arguments:[Ljava/lang/Object;

    return-object v0
.end method

.method public getLocation()Lorg/mockito/invocation/Location;
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/mockito/internal/invocation/InvocationImpl;->location:Lorg/mockito/invocation/Location;

    return-object v0
.end method

.method public getMethod()Ljava/lang/reflect/Method;
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/mockito/internal/invocation/InvocationImpl;->method:Lorg/mockito/internal/invocation/MockitoMethod;

    invoke-interface {v0}, Lorg/mockito/internal/invocation/MockitoMethod;->getJavaMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method public getMock()Ljava/lang/Object;
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/mockito/internal/invocation/InvocationImpl;->mock:Ljava/lang/Object;

    return-object v0
.end method

.method public getRawArguments()[Ljava/lang/Object;
    .locals 1

    .line 106
    iget-object v0, p0, Lorg/mockito/internal/invocation/InvocationImpl;->rawArguments:[Ljava/lang/Object;

    return-object v0
.end method

.method public getRawReturnType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lorg/mockito/internal/invocation/InvocationImpl;->method:Lorg/mockito/internal/invocation/MockitoMethod;

    invoke-interface {v0}, Lorg/mockito/internal/invocation/MockitoMethod;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getSequenceNumber()I
    .locals 1

    .line 75
    iget v0, p0, Lorg/mockito/internal/invocation/InvocationImpl;->sequenceNumber:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public ignoreForVerification()V
    .locals 1

    const/4 v0, 0x1

    .line 137
    iput-boolean v0, p0, Lorg/mockito/internal/invocation/InvocationImpl;->isIgnoredForVerification:Z

    return-void
.end method

.method public isIgnoredForVerification()Z
    .locals 1

    .line 133
    iget-boolean v0, p0, Lorg/mockito/internal/invocation/InvocationImpl;->isIgnoredForVerification:Z

    return v0
.end method

.method public isVerified()Z
    .locals 1

    .line 71
    iget-boolean v0, p0, Lorg/mockito/internal/invocation/InvocationImpl;->verified:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/mockito/internal/invocation/InvocationImpl;->isIgnoredForVerification:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public markStubbed(Lorg/mockito/invocation/StubInfo;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lorg/mockito/internal/invocation/InvocationImpl;->stubInfo:Lorg/mockito/invocation/StubInfo;

    return-void
.end method

.method public markVerified()V
    .locals 1

    const/4 v0, 0x1

    .line 121
    iput-boolean v0, p0, Lorg/mockito/internal/invocation/InvocationImpl;->verified:Z

    return-void
.end method

.method public stubInfo()Lorg/mockito/invocation/StubInfo;
    .locals 1

    .line 125
    iget-object v0, p0, Lorg/mockito/internal/invocation/InvocationImpl;->stubInfo:Lorg/mockito/invocation/StubInfo;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 98
    new-instance v0, Lorg/mockito/internal/reporting/PrintSettings;

    invoke-direct {v0}, Lorg/mockito/internal/reporting/PrintSettings;-><init>()V

    invoke-virtual {p0}, Lorg/mockito/internal/invocation/InvocationImpl;->getArguments()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/mockito/internal/invocation/ArgumentsProcessor;->argumentsToMatchers([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lorg/mockito/internal/reporting/PrintSettings;->print(Ljava/util/List;Lorg/mockito/invocation/Invocation;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
