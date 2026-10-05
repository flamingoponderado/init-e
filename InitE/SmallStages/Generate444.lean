import Tools.GenSmallStages
import InitE.SmallStages.Oracles444
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 444 InitE.WordStages.source444.2.1 InitE.WordStages.source444.2.2 InitE.SmallStages.Oracles444.oracle444
