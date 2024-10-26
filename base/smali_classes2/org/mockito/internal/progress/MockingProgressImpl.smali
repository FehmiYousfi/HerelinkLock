.class public Lorg/mockito/internal/progress/MockingProgressImpl;
.super Ljava/lang/Object;
.source "MockingProgressImpl.java"

# interfaces
.implements Lorg/mockito/internal/progress/MockingProgress;


# instance fields
.field private final argumentMatcherStorage:Lorg/mockito/internal/progress/ArgumentMatcherStorage;

.field private final listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/mockito/listeners/MockitoListener;",
            ">;"
        }
    .end annotation
.end field

.field private ongoingStubbing:Lorg/mockito/stubbing/OngoingStubbing;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mockito/stubbing/OngoingStubbing<",
            "*>;"
        }
    .end annotation
.end field

.field private stubbingInProgress:Lorg/mockito/invocation/Location;

.field private verificationMode:Lorg/mockito/internal/debugging/Localized;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mockito/internal/debugging/Localized<",
            "Lorg/mockito/verification/VerificationMode;",
            ">;"
        }
    .end annotation
.end field

.field private verificationStrategy:Lorg/mockito/verification/VerificationStrategy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lorg/mockito/internal/progress/ArgumentMatcherStorageImpl;

    invoke-direct {v0}, Lorg/mockito/internal/progress/ArgumentMatcherStorageImpl;-><init>()V

    iput-object v0, p0, Lorg/mockito/internal/progress/MockingProgressImpl;->argumentMatcherStorage:Lorg/mockito/internal/progress/ArgumentMatcherStorage;

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lorg/mockito/internal/progress/MockingProgressImpl;->stubbingInProgress:Lorg/mockito/invocation/Location;

    .line 36
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lorg/mockito/internal/progress/MockingProgressImpl;->listeners:Ljava/util/Set;

    .line 39
    invoke-static {}, Lorg/mockito/internal/progress/MockingProgressImpl;->getDefaultVerificationStrategy()Lorg/mockito/verification/VerificationStrategy;

    move-result-object v0

    iput-object v0, p0, Lorg/mockito/internal/progress/MockingProgressImpl;->verificationStrategy:Lorg/mockito/verification/VerificationStrategy;

    return-void
.end method

.method public static getDefaultVerificationStrategy()Lorg/mockito/verification/VerificationStrategy;
    .locals 1

    .line 43
    new-instance v0, Lorg/mockito/internal/progress/MockingProgressImpl$1;

    invoke-direct {v0}, Lorg/mockito/internal/progress/MockingProgressImpl$1;-><init>()V

    return-object v0
.end method

.method private validateMostStuff()V
    .locals 2

    .line 116
    invoke-static {}, Lorg/mockito/internal/configuration/GlobalConfiguration;->validate()V

    .line 118
    iget-object v0, p0, Lorg/mockito/internal/progress/MockingProgressImpl;->verificationMode:Lorg/mockito/internal/debugging/Localized;

    if-nez v0, :cond_0

    .line 124
    invoke-virtual {p0}, Lorg/mockito/internal/progress/MockingProgressImpl;->getArgumentMatcherStorage()Lorg/mockito/internal/progress/ArgumentMatcherStorage;

    move-result-object v0

    invoke-interface {v0}, Lorg/mockito/internal/progress/ArgumentMatcherStorage;->validateState()V

    return-void

    .line 119
    :cond_0
    invoke-virtual {v0}, Lorg/mockito/internal/debugging/Localized;->getLocation()Lorg/mockito/invocation/Location;

    move-result-object v0

    const/4 v1, 0x0

    .line 120
    iput-object v1, p0, Lorg/mockito/internal/progress/MockingProgressImpl;->verificationMode:Lorg/mockito/internal/debugging/Localized;

    .line 121
    invoke-static {v0}, Lorg/mockito/internal/exceptions/Reporter;->unfinishedVerificationException(Lorg/mockito/invocation/Location;)Lorg/mockito/exceptions/base/MockitoException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public addListener(Lorg/mockito/listeners/MockitoListener;)V
    .locals 3

    .line 157
    iget-object v0, p0, Lorg/mockito/internal/progress/MockingProgressImpl;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mockito/listeners/MockitoListener;

    .line 158
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/mockito/internal/exceptions/Reporter;->redundantMockitoListener(Ljava/lang/String;)V

    goto :goto_0

    .line 162
    :cond_1
    iget-object v0, p0, Lorg/mockito/internal/progress/MockingProgressImpl;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearListeners()V
    .locals 1

    .line 178
    iget-object v0, p0, Lorg/mockito/internal/progress/MockingProgressImpl;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public getArgumentMatcherStorage()Lorg/mockito/internal/progress/ArgumentMatcherStorage;
    .locals 1

    .line 144
    iget-object v0, p0, Lorg/mockito/internal/progress/MockingProgressImpl;->argumentMatcherStorage:Lorg/mockito/internal/progress/ArgumentMatcherStorage;

    return-object v0
.end method

.method public maybeVerifyLazily(Lorg/mockito/verification/VerificationMode;)Lorg/mockito/verification/VerificationMode;
    .locals 1

    .line 174
    iget-object v0, p0, Lorg/mockito/internal/progress/MockingProgressImpl;->verificationStrategy:Lorg/mockito/verification/VerificationStrategy;

    invoke-interface {v0, p1}, Lorg/mockito/verification/VerificationStrategy;->maybeVerifyLazily(Lorg/mockito/verification/VerificationMode;)Lorg/mockito/verification/VerificationMode;

    move-result-object p1

    return-object p1
.end method

.method public mockingStarted(Ljava/lang/Object;Lorg/mockito/mock/MockCreationSettings;)V
    .locals 3

    .line 148
    iget-object v0, p0, Lorg/mockito/internal/progress/MockingProgressImpl;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mockito/listeners/MockitoListener;

    .line 149
    instance-of v2, v1, Lorg/mockito/listeners/MockCreationListener;

    if-eqz v2, :cond_0

    .line 150
    check-cast v1, Lorg/mockito/listeners/MockCreationListener;

    invoke-interface {v1, p1, p2}, Lorg/mockito/listeners/MockCreationListener;->onMockCreated(Ljava/lang/Object;Lorg/mockito/mock/MockCreationSettings;)V

    goto :goto_0

    .line 153
    :cond_1
    invoke-direct {p0}, Lorg/mockito/internal/progress/MockingProgressImpl;->validateMostStuff()V

    return-void
.end method

.method public pullOngoingStubbing()Lorg/mockito/stubbing/OngoingStubbing;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/mockito/stubbing/OngoingStubbing<",
            "*>;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lorg/mockito/internal/progress/MockingProgressImpl;->ongoingStubbing:Lorg/mockito/stubbing/OngoingStubbing;

    const/4 v1, 0x0

    .line 56
    iput-object v1, p0, Lorg/mockito/internal/progress/MockingProgressImpl;->ongoingStubbing:Lorg/mockito/stubbing/OngoingStubbing;

    return-object v0
.end method

.method public pullVerificationMode()Lorg/mockito/verification/VerificationMode;
    .locals 2

    .line 88
    iget-object v0, p0, Lorg/mockito/internal/progress/MockingProgressImpl;->verificationMode:Lorg/mockito/internal/debugging/Localized;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 92
    :cond_0
    invoke-virtual {v0}, Lorg/mockito/internal/debugging/Localized;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mockito/verification/VerificationMode;

    .line 93
    iput-object v1, p0, Lorg/mockito/internal/progress/MockingProgressImpl;->verificationMode:Lorg/mockito/internal/debugging/Localized;

    return-object v0
.end method

.method public removeListener(Lorg/mockito/listeners/MockitoListener;)V
    .locals 1

    .line 166
    iget-object v0, p0, Lorg/mockito/internal/progress/MockingProgressImpl;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public reportOngoingStubbing(Lorg/mockito/stubbing/OngoingStubbing;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lorg/mockito/internal/progress/MockingProgressImpl;->ongoingStubbing:Lorg/mockito/stubbing/OngoingStubbing;

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 138
    iput-object v0, p0, Lorg/mockito/internal/progress/MockingProgressImpl;->stubbingInProgress:Lorg/mockito/invocation/Location;

    .line 139
    iput-object v0, p0, Lorg/mockito/internal/progress/MockingProgressImpl;->verificationMode:Lorg/mockito/internal/debugging/Localized;

    .line 140
    invoke-virtual {p0}, Lorg/mockito/internal/progress/MockingProgressImpl;->getArgumentMatcherStorage()Lorg/mockito/internal/progress/ArgumentMatcherStorage;

    move-result-object v0

    invoke-interface {v0}, Lorg/mockito/internal/progress/ArgumentMatcherStorage;->reset()V

    return-void
.end method

.method public resetOngoingStubbing()V
    .locals 1

    const/4 v0, 0x0

    .line 84
    iput-object v0, p0, Lorg/mockito/internal/progress/MockingProgressImpl;->ongoingStubbing:Lorg/mockito/stubbing/OngoingStubbing;

    return-void
.end method

.method public setVerificationStrategy(Lorg/mockito/verification/VerificationStrategy;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lorg/mockito/internal/progress/MockingProgressImpl;->verificationStrategy:Lorg/mockito/verification/VerificationStrategy;

    return-void
.end method

.method public stubbingCompleted()V
    .locals 1

    const/4 v0, 0x0

    .line 128
    iput-object v0, p0, Lorg/mockito/internal/progress/MockingProgressImpl;->stubbingInProgress:Lorg/mockito/invocation/Location;

    return-void
.end method

.method public stubbingStarted()V
    .locals 1

    .line 98
    invoke-virtual {p0}, Lorg/mockito/internal/progress/MockingProgressImpl;->validateState()V

    .line 99
    new-instance v0, Lorg/mockito/internal/debugging/LocationImpl;

    invoke-direct {v0}, Lorg/mockito/internal/debugging/LocationImpl;-><init>()V

    iput-object v0, p0, Lorg/mockito/internal/progress/MockingProgressImpl;->stubbingInProgress:Lorg/mockito/invocation/Location;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "iOngoingStubbing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/mockito/internal/progress/MockingProgressImpl;->ongoingStubbing:Lorg/mockito/stubbing/OngoingStubbing;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", verificationMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/mockito/internal/progress/MockingProgressImpl;->verificationMode:Lorg/mockito/internal/debugging/Localized;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", stubbingInProgress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/mockito/internal/progress/MockingProgressImpl;->stubbingInProgress:Lorg/mockito/invocation/Location;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public validateState()V
    .locals 2

    .line 103
    invoke-direct {p0}, Lorg/mockito/internal/progress/MockingProgressImpl;->validateMostStuff()V

    .line 106
    iget-object v0, p0, Lorg/mockito/internal/progress/MockingProgressImpl;->stubbingInProgress:Lorg/mockito/invocation/Location;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 108
    iput-object v1, p0, Lorg/mockito/internal/progress/MockingProgressImpl;->stubbingInProgress:Lorg/mockito/invocation/Location;

    .line 109
    invoke-static {v0}, Lorg/mockito/internal/exceptions/Reporter;->unfinishedStubbing(Lorg/mockito/invocation/Location;)Lorg/mockito/exceptions/base/MockitoException;

    move-result-object v0

    throw v0
.end method

.method public verificationListeners()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/mockito/listeners/VerificationListener;",
            ">;"
        }
    .end annotation

    .line 62
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 64
    iget-object v1, p0, Lorg/mockito/internal/progress/MockingProgressImpl;->listeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mockito/listeners/MockitoListener;

    .line 65
    instance-of v3, v2, Lorg/mockito/listeners/VerificationListener;

    if-eqz v3, :cond_0

    .line 66
    check-cast v2, Lorg/mockito/listeners/VerificationListener;

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public verificationStarted(Lorg/mockito/verification/VerificationMode;)V
    .locals 1

    .line 75
    invoke-virtual {p0}, Lorg/mockito/internal/progress/MockingProgressImpl;->validateState()V

    .line 76
    invoke-virtual {p0}, Lorg/mockito/internal/progress/MockingProgressImpl;->resetOngoingStubbing()V

    .line 77
    new-instance v0, Lorg/mockito/internal/debugging/Localized;

    invoke-direct {v0, p1}, Lorg/mockito/internal/debugging/Localized;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/mockito/internal/progress/MockingProgressImpl;->verificationMode:Lorg/mockito/internal/debugging/Localized;

    return-void
.end method
