import Tools.GenSmallStages
import InitE.SmallStages.Oracles666
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 666 InitE.WordStages.source666.2.1 InitE.WordStages.source666.2.2 InitE.SmallStages.Oracles666.oracle666
