import Tools.GenSmallStages
import InitE.SmallStages.Oracles418
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 418 InitE.WordStages.source418.2.1 InitE.WordStages.source418.2.2 InitE.SmallStages.Oracles418.oracle418
