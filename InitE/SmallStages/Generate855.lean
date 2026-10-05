import Tools.GenSmallStages
import InitE.SmallStages.Oracles855
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 855 InitE.WordStages.source855.2.1 InitE.WordStages.source855.2.2 InitE.SmallStages.Oracles855.oracle855
