import Tools.GenSmallStages
import InitE.SmallStages.Oracles281
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 281 InitE.WordStages.source281.2.1 InitE.WordStages.source281.2.2 InitE.SmallStages.Oracles281.oracle281
