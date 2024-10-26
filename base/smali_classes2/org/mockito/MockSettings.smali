.class public interface abstract Lorg/mockito/MockSettings;
.super Ljava/lang/Object;
.source "MockSettings.java"

# interfaces
.implements Ljava/io/Serializable;


# virtual methods
.method public abstract defaultAnswer(Lorg/mockito/stubbing/Answer;)Lorg/mockito/MockSettings;
.end method

.method public varargs abstract extraInterfaces([Ljava/lang/Class;)Lorg/mockito/MockSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/mockito/MockSettings;"
        }
    .end annotation
.end method

.method public varargs abstract invocationListeners([Lorg/mockito/listeners/InvocationListener;)Lorg/mockito/MockSettings;
.end method

.method public abstract name(Ljava/lang/String;)Lorg/mockito/MockSettings;
.end method

.method public abstract outerInstance(Ljava/lang/Object;)Lorg/mockito/MockSettings;
    .annotation runtime Lorg/mockito/Incubating;
    .end annotation
.end method

.method public abstract serializable()Lorg/mockito/MockSettings;
.end method

.method public abstract serializable(Lorg/mockito/mock/SerializableMode;)Lorg/mockito/MockSettings;
.end method

.method public abstract spiedInstance(Ljava/lang/Object;)Lorg/mockito/MockSettings;
.end method

.method public abstract stubOnly()Lorg/mockito/MockSettings;
.end method

.method public varargs abstract useConstructor([Ljava/lang/Object;)Lorg/mockito/MockSettings;
    .annotation runtime Lorg/mockito/Incubating;
    .end annotation
.end method

.method public abstract verboseLogging()Lorg/mockito/MockSettings;
.end method
