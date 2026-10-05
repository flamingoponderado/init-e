import Tools.GenSmallStages
import InitE.SmallStages.Oracles367
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 367 InitE.WordStages.source367.2.1 InitE.WordStages.source367.2.2 InitE.SmallStages.Oracles367.oracle367
