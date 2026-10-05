import Tools.GenSmallStages
import InitE.SmallStages.Oracles857
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 857 InitE.WordStages.source857.2.1 InitE.WordStages.source857.2.2 InitE.SmallStages.Oracles857.oracle857
