import Tools.GenSmallStages
import InitE.SmallStages.Oracles835
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 835 InitE.WordStages.source835.2.1 InitE.WordStages.source835.2.2 InitE.SmallStages.Oracles835.oracle835
