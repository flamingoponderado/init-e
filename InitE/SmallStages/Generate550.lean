import Tools.GenSmallStages
import InitE.SmallStages.Oracles550
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 550 InitE.WordStages.source550.2.1 InitE.WordStages.source550.2.2 InitE.SmallStages.Oracles550.oracle550
