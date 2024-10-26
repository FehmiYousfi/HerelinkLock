.class public final synthetic Lorg/cubepilot/herelinksettings/-$$Lambda$ButtonSettings$602OuSwMFhcTf_XVGf6_3M8LhQs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic f$0:Lorg/cubepilot/herelinksettings/ButtonSettings;

.field private final synthetic f$1:Landroid/widget/EditText;


# direct methods
.method public synthetic constructor <init>(Lorg/cubepilot/herelinksettings/ButtonSettings;Landroid/widget/EditText;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/cubepilot/herelinksettings/-$$Lambda$ButtonSettings$602OuSwMFhcTf_XVGf6_3M8LhQs;->f$0:Lorg/cubepilot/herelinksettings/ButtonSettings;

    iput-object p2, p0, Lorg/cubepilot/herelinksettings/-$$Lambda$ButtonSettings$602OuSwMFhcTf_XVGf6_3M8LhQs;->f$1:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lorg/cubepilot/herelinksettings/-$$Lambda$ButtonSettings$602OuSwMFhcTf_XVGf6_3M8LhQs;->f$0:Lorg/cubepilot/herelinksettings/ButtonSettings;

    iget-object v1, p0, Lorg/cubepilot/herelinksettings/-$$Lambda$ButtonSettings$602OuSwMFhcTf_XVGf6_3M8LhQs;->f$1:Landroid/widget/EditText;

    invoke-virtual {v0, v1, p1, p2}, Lorg/cubepilot/herelinksettings/ButtonSettings;->lambda$newSettings$1$ButtonSettings(Landroid/widget/EditText;Landroid/content/DialogInterface;I)V

    return-void
.end method
