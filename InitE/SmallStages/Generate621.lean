import Tools.GenSmallStages
import InitE.SmallStages.Oracles621
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 621 InitE.WordStages.source621.2.1 InitE.WordStages.source621.2.2 InitE.SmallStages.Oracles621.oracle621
