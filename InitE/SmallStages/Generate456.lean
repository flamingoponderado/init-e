import Tools.GenSmallStages
import InitE.SmallStages.Oracles456
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 456 InitE.WordStages.source456.2.1 InitE.WordStages.source456.2.2 InitE.SmallStages.Oracles456.oracle456
