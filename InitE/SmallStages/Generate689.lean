import Tools.GenSmallStages
import InitE.SmallStages.Oracles689
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 689 InitE.WordStages.source689.2.1 InitE.WordStages.source689.2.2 InitE.SmallStages.Oracles689.oracle689
