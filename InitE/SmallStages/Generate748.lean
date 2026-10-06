import Tools.GenSmallStages
import InitE.SmallStages.Oracles748
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 748 InitE.WordStages.source748.2.1 InitE.WordStages.source748.2.2 InitE.SmallStages.Oracles748.oracle748
