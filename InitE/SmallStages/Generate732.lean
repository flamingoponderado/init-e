import Tools.GenSmallStages
import InitE.SmallStages.Oracles732
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 732 InitE.WordStages.source732.2.1 InitE.WordStages.source732.2.2 InitE.SmallStages.Oracles732.oracle732
