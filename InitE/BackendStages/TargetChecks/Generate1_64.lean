import Tools.GenBackendTargetStages
import InitE.BackendStages.TargetChecks.Data0_64
import InitE.BackendStages.TargetLabels1
import InitE.BackendStages.TargetFfis
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.BackendTargetGenerator.prepare env 1 64 1112 InitE.BackendStages.Target.labels1 InitE.BackendStages.Target.ffis InitE.BackendStages.TargetChecks.Reencode0_64
