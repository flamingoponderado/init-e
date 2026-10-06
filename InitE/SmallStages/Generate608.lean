import Tools.GenSmallStages
import InitE.SmallStages.Oracles608
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 608 InitE.WordStages.source608.2.1 InitE.WordStages.source608.2.2 InitE.SmallStages.Oracles608.oracle608
