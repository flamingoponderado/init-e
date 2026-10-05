import Tools.GenSmallStages
import InitE.SmallStages.Oracles762
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 762 InitE.WordStages.source762.2.1 InitE.WordStages.source762.2.2 InitE.SmallStages.Oracles762.oracle762
