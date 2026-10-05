import Tools.GenSmallStages
import InitE.SmallStages.Oracles600
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 600 InitE.WordStages.source600.2.1 InitE.WordStages.source600.2.2 InitE.SmallStages.Oracles600.oracle600
