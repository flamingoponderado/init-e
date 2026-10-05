import Tools.GenSmallStages
import InitE.SmallStages.Oracles730
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 730 InitE.WordStages.source730.2.1 InitE.WordStages.source730.2.2 InitE.SmallStages.Oracles730.oracle730
