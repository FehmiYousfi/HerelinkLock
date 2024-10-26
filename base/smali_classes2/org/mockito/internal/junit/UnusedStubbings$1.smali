.class Lorg/mockito/internal/junit/UnusedStubbings$1;
.super Ljava/lang/Object;
.source "UnusedStubbings.java"

# interfaces
.implements Lorg/mockito/internal/util/collections/ListUtil$Converter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mockito/internal/junit/UnusedStubbings;->reportUnused()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/mockito/internal/util/collections/ListUtil$Converter<",
        "Lorg/mockito/stubbing/Stubbing;",
        "Lorg/mockito/invocation/Invocation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mockito/internal/junit/UnusedStubbings;


# direct methods
.method constructor <init>(Lorg/mockito/internal/junit/UnusedStubbings;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lorg/mockito/internal/junit/UnusedStubbings$1;->this$0:Lorg/mockito/internal/junit/UnusedStubbings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 52
    check-cast p1, Lorg/mockito/stubbing/Stubbing;

    invoke-virtual {p0, p1}, Lorg/mockito/internal/junit/UnusedStubbings$1;->convert(Lorg/mockito/stubbing/Stubbing;)Lorg/mockito/invocation/Invocation;

    move-result-object p1

    return-object p1
.end method

.method public convert(Lorg/mockito/stubbing/Stubbing;)Lorg/mockito/invocation/Invocation;
    .locals 0

    .line 54
    invoke-interface {p1}, Lorg/mockito/stubbing/Stubbing;->getInvocation()Lorg/mockito/invocation/Invocation;

    move-result-object p1

    return-object p1
.end method
