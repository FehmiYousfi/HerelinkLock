.class public interface abstract Lorg/eclipse/californium/elements/EndpointContextMatcher;
.super Ljava/lang/Object;
.source "EndpointContextMatcher.java"

# interfaces
.implements Lorg/eclipse/californium/elements/EndpointIdentityResolver;


# virtual methods
.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract isResponseRelatedToRequest(Lorg/eclipse/californium/elements/EndpointContext;Lorg/eclipse/californium/elements/EndpointContext;)Z
.end method

.method public abstract isToBeSent(Lorg/eclipse/californium/elements/EndpointContext;Lorg/eclipse/californium/elements/EndpointContext;)Z
.end method

.method public abstract toRelevantState(Lorg/eclipse/californium/elements/EndpointContext;)Ljava/lang/String;
.end method
