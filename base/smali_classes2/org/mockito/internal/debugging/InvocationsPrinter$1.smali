.class Lorg/mockito/internal/debugging/InvocationsPrinter$1;
.super Ljava/lang/Object;
.source "InvocationsPrinter.java"

# interfaces
.implements Lorg/mockito/internal/util/collections/ListUtil$Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mockito/internal/debugging/InvocationsPrinter;->printInvocations(Ljava/lang/Object;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/mockito/internal/util/collections/ListUtil$Filter<",
        "Lorg/mockito/stubbing/Stubbing;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mockito/internal/debugging/InvocationsPrinter;


# direct methods
.method constructor <init>(Lorg/mockito/internal/debugging/InvocationsPrinter;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lorg/mockito/internal/debugging/InvocationsPrinter$1;->this$0:Lorg/mockito/internal/debugging/InvocationsPrinter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic isOut(Ljava/lang/Object;)Z
    .locals 0

    .line 40
    check-cast p1, Lorg/mockito/stubbing/Stubbing;

    invoke-virtual {p0, p1}, Lorg/mockito/internal/debugging/InvocationsPrinter$1;->isOut(Lorg/mockito/stubbing/Stubbing;)Z

    move-result p1

    return p1
.end method

.method public isOut(Lorg/mockito/stubbing/Stubbing;)Z
    .locals 0

    .line 42
    invoke-interface {p1}, Lorg/mockito/stubbing/Stubbing;->wasUsed()Z

    move-result p1

    return p1
.end method
