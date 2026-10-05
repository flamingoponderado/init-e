import Tools.GenBackendTargetStages
import InitE.BackendStages.Encoded66
import InitE.BackendStages.TargetLabels0
import InitE.BackendStages.TargetFfis
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.BackendTargetGenerator.prepare env 0 66 5732 InitE.BackendStages.Target.labels0 InitE.BackendStages.Target.ffis InitE.BackendStages.Encoded66
