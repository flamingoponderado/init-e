import Tools.GenSmallStages
import InitE.SmallStages.Oracles682
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 682 InitE.WordStages.source682.2.1 InitE.WordStages.source682.2.2 InitE.SmallStages.Oracles682.oracle682
