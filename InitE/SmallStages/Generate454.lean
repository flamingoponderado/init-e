import Tools.GenSmallStages
import InitE.SmallStages.Oracles454
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 454 InitE.WordStages.source454.2.1 InitE.WordStages.source454.2.2 InitE.SmallStages.Oracles454.oracle454
