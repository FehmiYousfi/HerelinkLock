.class public Lorg/mockito/internal/util/DefaultMockingDetails;
.super Ljava/lang/Object;
.source "DefaultMockingDetails.java"

# interfaces
.implements Lorg/mockito/MockingDetails;


# instance fields
.field private final toInspect:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/mockito/internal/util/DefaultMockingDetails;->toInspect:Ljava/lang/Object;

    return-void
.end method

.method private assertGoodMock()V
    .locals 3

    .line 74
    iget-object v0, p0, Lorg/mockito/internal/util/DefaultMockingDetails;->toInspect:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 76
    invoke-virtual {p0}, Lorg/mockito/internal/util/DefaultMockingDetails;->isMock()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 77
    :cond_0
    new-instance v0, Lorg/mockito/exceptions/misusing/NotAMockException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Argument passed to Mockito.mockingDetails() should be a mock, but is an instance of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/mockito/internal/util/DefaultMockingDetails;->toInspect:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/misusing/NotAMockException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_1
    new-instance v0, Lorg/mockito/exceptions/misusing/NotAMockException;

    const-string v1, "Argument passed to Mockito.mockingDetails() should be a mock, but is null!"

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/misusing/NotAMockException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private mockHandler()Lorg/mockito/internal/InternalMockHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/mockito/internal/InternalMockHandler<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 69
    invoke-direct {p0}, Lorg/mockito/internal/util/DefaultMockingDetails;->assertGoodMock()V

    .line 70
    iget-object v0, p0, Lorg/mockito/internal/util/DefaultMockingDetails;->toInspect:Ljava/lang/Object;

    invoke-static {v0}, Lorg/mockito/internal/util/MockUtil;->getMockHandler(Ljava/lang/Object;)Lorg/mockito/internal/InternalMockHandler;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getInvocations()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/mockito/invocation/Invocation;",
            ">;"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Lorg/mockito/internal/util/DefaultMockingDetails;->mockHandler()Lorg/mockito/internal/InternalMockHandler;

    move-result-object v0

    invoke-interface {v0}, Lorg/mockito/internal/InternalMockHandler;->getInvocationContainer()Lorg/mockito/internal/stubbing/InvocationContainer;

    move-result-object v0

    invoke-interface {v0}, Lorg/mockito/internal/stubbing/InvocationContainer;->getInvocations()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMockCreationSettings()Lorg/mockito/mock/MockCreationSettings;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/mockito/mock/MockCreationSettings<",
            "*>;"
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Lorg/mockito/internal/util/DefaultMockingDetails;->mockHandler()Lorg/mockito/internal/InternalMockHandler;

    move-result-object v0

    invoke-interface {v0}, Lorg/mockito/internal/InternalMockHandler;->getMockSettings()Lorg/mockito/mock/MockCreationSettings;

    move-result-object v0

    return-object v0
.end method

.method public getStubbings()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/mockito/stubbing/Stubbing;",
            ">;"
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Lorg/mockito/internal/util/DefaultMockingDetails;->mockHandler()Lorg/mockito/internal/InternalMockHandler;

    move-result-object v0

    invoke-interface {v0}, Lorg/mockito/internal/InternalMockHandler;->getInvocationContainer()Lorg/mockito/internal/stubbing/InvocationContainer;

    move-result-object v0

    invoke-interface {v0}, Lorg/mockito/internal/stubbing/InvocationContainer;->getStubbedInvocations()Ljava/util/List;

    move-result-object v0

    .line 57
    new-instance v1, Ljava/util/TreeSet;

    new-instance v2, Lorg/mockito/internal/stubbing/StubbingComparator;

    invoke-direct {v2}, Lorg/mockito/internal/stubbing/StubbingComparator;-><init>()V

    invoke-direct {v1, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 58
    invoke-virtual {v1, v0}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    return-object v1
.end method

.method public isMock()Z
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/mockito/internal/util/DefaultMockingDetails;->toInspect:Ljava/lang/Object;

    invoke-static {v0}, Lorg/mockito/internal/util/MockUtil;->isMock(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSpy()Z
    .locals 1

    .line 41
    iget-object v0, p0, Lorg/mockito/internal/util/DefaultMockingDetails;->toInspect:Ljava/lang/Object;

    invoke-static {v0}, Lorg/mockito/internal/util/MockUtil;->isSpy(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public printInvocations()Ljava/lang/String;
    .locals 2

    .line 64
    invoke-direct {p0}, Lorg/mockito/internal/util/DefaultMockingDetails;->assertGoodMock()V

    .line 65
    new-instance v0, Lorg/mockito/internal/debugging/InvocationsPrinter;

    invoke-direct {v0}, Lorg/mockito/internal/debugging/InvocationsPrinter;-><init>()V

    iget-object v1, p0, Lorg/mockito/internal/util/DefaultMockingDetails;->toInspect:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/mockito/internal/debugging/InvocationsPrinter;->printInvocations(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
