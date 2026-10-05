import Tools.GenBackendTargetStages
import InitE.BackendStages.TargetChecks.Data0_66
import InitE.BackendStages.TargetLabels1
import InitE.BackendStages.TargetFfis
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.BackendTargetGenerator.prepare env 1 66 5732 InitE.BackendStages.Target.labels1 InitE.BackendStages.Target.ffis InitE.BackendStages.TargetChecks.Reencode0_66
