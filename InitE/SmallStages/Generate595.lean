import Tools.GenSmallStages
import InitE.SmallStages.Oracles595
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 595 InitE.WordStages.source595.2.1 InitE.WordStages.source595.2.2 InitE.SmallStages.Oracles595.oracle595
