.class public Lorg/mockito/internal/junit/StrictStubsRunnerTestListener;
.super Ljava/lang/Object;
.source "StrictStubsRunnerTestListener.java"

# interfaces
.implements Lorg/mockito/internal/junit/MockitoTestListener;


# instance fields
.field private final stubbingLookupListener:Lorg/mockito/internal/junit/DefaultStubbingLookupListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Lorg/mockito/internal/junit/DefaultStubbingLookupListener;

    sget-object v1, Lorg/mockito/quality/Strictness;->STRICT_STUBS:Lorg/mockito/quality/Strictness;

    invoke-direct {v0, v1}, Lorg/mockito/internal/junit/DefaultStubbingLookupListener;-><init>(Lorg/mockito/quality/Strictness;)V

    iput-object v0, p0, Lorg/mockito/internal/junit/StrictStubsRunnerTestListener;->stubbingLookupListener:Lorg/mockito/internal/junit/DefaultStubbingLookupListener;

    return-void
.end method


# virtual methods
.method public onMockCreated(Ljava/lang/Object;Lorg/mockito/mock/MockCreationSettings;)V
    .locals 0

    .line 23
    check-cast p2, Lorg/mockito/internal/creation/settings/CreationSettings;

    invoke-virtual {p2}, Lorg/mockito/internal/creation/settings/CreationSettings;->getStubbingLookupListeners()Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lorg/mockito/internal/junit/StrictStubsRunnerTestListener;->stubbingLookupListener:Lorg/mockito/internal/junit/DefaultStubbingLookupListener;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public testFinished(Lorg/mockito/internal/junit/TestFinishedEvent;)V
    .locals 0

    return-void
.end method
