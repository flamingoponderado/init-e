import Tools.GenSmallStages
import InitE.SmallStages.Oracles627
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 627 InitE.WordStages.source627.2.1 InitE.WordStages.source627.2.2 InitE.SmallStages.Oracles627.oracle627
