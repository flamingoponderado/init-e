import Tools.GenBackendTargetStages
import InitE.BackendStages.Encoded713
import InitE.BackendStages.TargetLabels0
import InitE.BackendStages.TargetFfis
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.BackendTargetGenerator.prepare env 0 713 678336 InitE.BackendStages.Target.labels0 InitE.BackendStages.Target.ffis InitE.BackendStages.Encoded713
