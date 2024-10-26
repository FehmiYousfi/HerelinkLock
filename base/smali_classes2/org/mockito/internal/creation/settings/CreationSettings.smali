.class public Lorg/mockito/internal/creation/settings/CreationSettings;
.super Ljava/lang/Object;
.source "CreationSettings.java"

# interfaces
.implements Lorg/mockito/mock/MockCreationSettings;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/mockito/mock/MockCreationSettings<",
        "TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x5e3a37b4d7e3ec6dL


# instance fields
.field private constructorArgs:[Ljava/lang/Object;

.field protected defaultAnswer:Lorg/mockito/stubbing/Answer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mockito/stubbing/Answer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected extraInterfaces:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field protected invocationListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/mockito/listeners/InvocationListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mockName:Lorg/mockito/mock/MockName;

.field protected name:Ljava/lang/String;

.field private outerClassInstance:Ljava/lang/Object;

.field protected serializableMode:Lorg/mockito/mock/SerializableMode;

.field protected spiedInstance:Ljava/lang/Object;

.field protected stubOnly:Z

.field protected final stubbingLookupListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/mockito/internal/listeners/StubbingLookupListener;",
            ">;"
        }
    .end annotation
.end field

.field protected typeToMock:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private useConstructor:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lorg/mockito/internal/creation/settings/CreationSettings;->extraInterfaces:Ljava/util/Set;

    .line 29
    sget-object v0, Lorg/mockito/mock/SerializableMode;->NONE:Lorg/mockito/mock/SerializableMode;

    iput-object v0, p0, Lorg/mockito/internal/creation/settings/CreationSettings;->serializableMode:Lorg/mockito/mock/SerializableMode;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mockito/internal/creation/settings/CreationSettings;->invocationListeners:Ljava/util/List;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mockito/internal/creation/settings/CreationSettings;->stubbingLookupListeners:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/mockito/internal/creation/settings/CreationSettings;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lorg/mockito/internal/creation/settings/CreationSettings;->extraInterfaces:Ljava/util/Set;

    .line 29
    sget-object v0, Lorg/mockito/mock/SerializableMode;->NONE:Lorg/mockito/mock/SerializableMode;

    iput-object v0, p0, Lorg/mockito/internal/creation/settings/CreationSettings;->serializableMode:Lorg/mockito/mock/SerializableMode;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mockito/internal/creation/settings/CreationSettings;->invocationListeners:Ljava/util/List;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mockito/internal/creation/settings/CreationSettings;->stubbingLookupListeners:Ljava/util/List;

    .line 41
    iget-object v0, p1, Lorg/mockito/internal/creation/settings/CreationSettings;->typeToMock:Ljava/lang/Class;

    iput-object v0, p0, Lorg/mockito/internal/creation/settings/CreationSettings;->typeToMock:Ljava/lang/Class;

    .line 42
    iget-object v0, p1, Lorg/mockito/internal/creation/settings/CreationSettings;->extraInterfaces:Ljava/util/Set;

    iput-object v0, p0, Lorg/mockito/internal/creation/settings/CreationSettings;->extraInterfaces:Ljava/util/Set;

    .line 43
    iget-object v0, p1, Lorg/mockito/internal/creation/settings/CreationSettings;->name:Ljava/lang/String;

    iput-object v0, p0, Lorg/mockito/internal/creation/settings/CreationSettings;->name:Ljava/lang/String;

    .line 44
    iget-object v0, p1, Lorg/mockito/internal/creation/settings/CreationSettings;->spiedInstance:Ljava/lang/Object;

    iput-object v0, p0, Lorg/mockito/internal/creation/settings/CreationSettings;->spiedInstance:Ljava/lang/Object;

    .line 45
    iget-object v0, p1, Lorg/mockito/internal/creation/settings/CreationSettings;->defaultAnswer:Lorg/mockito/stubbing/Answer;

    iput-object v0, p0, Lorg/mockito/internal/creation/settings/CreationSettings;->defaultAnswer:Lorg/mockito/stubbing/Answer;

    .line 46
    iget-object v0, p1, Lorg/mockito/internal/creation/settings/CreationSettings;->mockName:Lorg/mockito/mock/MockName;

    iput-object v0, p0, Lorg/mockito/internal/creation/settings/CreationSettings;->mockName:Lorg/mockito/mock/MockName;

    .line 47
    iget-object v0, p1, Lorg/mockito/internal/creation/settings/CreationSettings;->serializableMode:Lorg/mockito/mock/SerializableMode;

    iput-object v0, p0, Lorg/mockito/internal/creation/settings/CreationSettings;->serializableMode:Lorg/mockito/mock/SerializableMode;

    .line 48
    iget-object v0, p1, Lorg/mockito/internal/creation/settings/CreationSettings;->invocationListeners:Ljava/util/List;

    iput-object v0, p0, Lorg/mockito/internal/creation/settings/CreationSettings;->invocationListeners:Ljava/util/List;

    .line 49
    iget-boolean v0, p1, Lorg/mockito/internal/creation/settings/CreationSettings;->stubOnly:Z

    iput-boolean v0, p0, Lorg/mockito/internal/creation/settings/CreationSettings;->stubOnly:Z

    .line 50
    invoke-virtual {p1}, Lorg/mockito/internal/creation/settings/CreationSettings;->isUsingConstructor()Z

    move-result v0

    iput-boolean v0, p0, Lorg/mockito/internal/creation/settings/CreationSettings;->useConstructor:Z

    .line 51
    invoke-virtual {p1}, Lorg/mockito/internal/creation/settings/CreationSettings;->getOuterClassInstance()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/mockito/internal/creation/settings/CreationSettings;->outerClassInstance:Ljava/lang/Object;

    .line 52
    invoke-virtual {p1}, Lorg/mockito/internal/creation/settings/CreationSettings;->getConstructorArgs()[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/mockito/internal/creation/settings/CreationSettings;->constructorArgs:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getConstructorArgs()[Ljava/lang/Object;
    .locals 1

    .line 121
    iget-object v0, p0, Lorg/mockito/internal/creation/settings/CreationSettings;->constructorArgs:[Ljava/lang/Object;

    return-object v0
.end method

.method public getDefaultAnswer()Lorg/mockito/stubbing/Answer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/mockito/stubbing/Answer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lorg/mockito/internal/creation/settings/CreationSettings;->defaultAnswer:Lorg/mockito/stubbing/Answer;

    return-object v0
.end method

.method public getExtraInterfaces()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lorg/mockito/internal/creation/settings/CreationSettings;->extraInterfaces:Ljava/util/Set;

    return-object v0
.end method

.method public getInvocationListeners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/mockito/listeners/InvocationListener;",
            ">;"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lorg/mockito/internal/creation/settings/CreationSettings;->invocationListeners:Ljava/util/List;

    return-object v0
.end method

.method public getMockName()Lorg/mockito/mock/MockName;
    .locals 1

    .line 86
    iget-object v0, p0, Lorg/mockito/internal/creation/settings/CreationSettings;->mockName:Lorg/mockito/mock/MockName;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lorg/mockito/internal/creation/settings/CreationSettings;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOuterClassInstance()Ljava/lang/Object;
    .locals 1

    .line 125
    iget-object v0, p0, Lorg/mockito/internal/creation/settings/CreationSettings;->outerClassInstance:Ljava/lang/Object;

    return-object v0
.end method

.method public getSerializableMode()Lorg/mockito/mock/SerializableMode;
    .locals 1

    .line 104
    iget-object v0, p0, Lorg/mockito/internal/creation/settings/CreationSettings;->serializableMode:Lorg/mockito/mock/SerializableMode;

    return-object v0
.end method

.method public getSpiedInstance()Ljava/lang/Object;
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/mockito/internal/creation/settings/CreationSettings;->spiedInstance:Ljava/lang/Object;

    return-object v0
.end method

.method public getStubbingLookupListeners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/mockito/internal/listeners/StubbingLookupListener;",
            ">;"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lorg/mockito/internal/creation/settings/CreationSettings;->stubbingLookupListeners:Ljava/util/List;

    return-object v0
.end method

.method public getTypeToMock()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lorg/mockito/internal/creation/settings/CreationSettings;->typeToMock:Ljava/lang/Class;

    return-object v0
.end method

.method public isSerializable()Z
    .locals 2

    .line 95
    iget-object v0, p0, Lorg/mockito/internal/creation/settings/CreationSettings;->serializableMode:Lorg/mockito/mock/SerializableMode;

    sget-object v1, Lorg/mockito/mock/SerializableMode;->NONE:Lorg/mockito/mock/SerializableMode;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isStubOnly()Z
    .locals 1

    .line 129
    iget-boolean v0, p0, Lorg/mockito/internal/creation/settings/CreationSettings;->stubOnly:Z

    return v0
.end method

.method public isUsingConstructor()Z
    .locals 1

    .line 116
    iget-boolean v0, p0, Lorg/mockito/internal/creation/settings/CreationSettings;->useConstructor:Z

    return v0
.end method

.method public setExtraInterfaces(Ljava/util/Set;)Lorg/mockito/internal/creation/settings/CreationSettings;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;)",
            "Lorg/mockito/internal/creation/settings/CreationSettings<",
            "TT;>;"
        }
    .end annotation

    .line 69
    iput-object p1, p0, Lorg/mockito/internal/creation/settings/CreationSettings;->extraInterfaces:Ljava/util/Set;

    return-object p0
.end method

.method public setMockName(Lorg/mockito/mock/MockName;)Lorg/mockito/internal/creation/settings/CreationSettings;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/mock/MockName;",
            ")",
            "Lorg/mockito/internal/creation/settings/CreationSettings<",
            "TT;>;"
        }
    .end annotation

    .line 90
    iput-object p1, p0, Lorg/mockito/internal/creation/settings/CreationSettings;->mockName:Lorg/mockito/mock/MockName;

    return-object p0
.end method

.method public setSerializableMode(Lorg/mockito/mock/SerializableMode;)Lorg/mockito/internal/creation/settings/CreationSettings;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/mock/SerializableMode;",
            ")",
            "Lorg/mockito/internal/creation/settings/CreationSettings<",
            "TT;>;"
        }
    .end annotation

    .line 99
    iput-object p1, p0, Lorg/mockito/internal/creation/settings/CreationSettings;->serializableMode:Lorg/mockito/mock/SerializableMode;

    return-object p0
.end method

.method public setTypeToMock(Ljava/lang/Class;)Lorg/mockito/internal/creation/settings/CreationSettings;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lorg/mockito/internal/creation/settings/CreationSettings<",
            "TT;>;"
        }
    .end annotation

    .line 60
    iput-object p1, p0, Lorg/mockito/internal/creation/settings/CreationSettings;->typeToMock:Ljava/lang/Class;

    return-object p0
.end method
