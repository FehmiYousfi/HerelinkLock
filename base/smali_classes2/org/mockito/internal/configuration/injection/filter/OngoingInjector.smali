.class public interface abstract Lorg/mockito/internal/configuration/injection/filter/OngoingInjector;
.super Ljava/lang/Object;
.source "OngoingInjector.java"


# static fields
.field public static final nop:Lorg/mockito/internal/configuration/injection/filter/OngoingInjector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Lorg/mockito/internal/configuration/injection/filter/OngoingInjector$1;

    invoke-direct {v0}, Lorg/mockito/internal/configuration/injection/filter/OngoingInjector$1;-><init>()V

    sput-object v0, Lorg/mockito/internal/configuration/injection/filter/OngoingInjector;->nop:Lorg/mockito/internal/configuration/injection/filter/OngoingInjector;

    return-void
.end method


# virtual methods
.method public abstract thenInject()Ljava/lang/Object;
.end method
