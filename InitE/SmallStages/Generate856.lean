import Tools.GenSmallStages
import InitE.SmallStages.Oracles856
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 856 InitE.WordStages.source856.2.1 InitE.WordStages.source856.2.2 InitE.SmallStages.Oracles856.oracle856
