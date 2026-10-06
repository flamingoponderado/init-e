import Tools.GenBackendTargetStages
import InitE.BackendStages.Native
import InitE.BackendStages.TargetLabels0
import InitE.BackendStages.TargetLabels1
import InitE.BackendStages.TargetFfis
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.BackendTargetGenerator.prepareCorrectAll env InitE.BackendStages.Native.stack InitE.BackendStages.Target.labels0 InitE.BackendStages.Target.labels1 InitE.BackendStages.Target.ffis
